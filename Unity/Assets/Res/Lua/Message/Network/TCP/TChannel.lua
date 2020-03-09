-- Generated by CSharp.lua Compiler
local System = System
local DCET = DCET
local DCETRuntime = DCETRuntime
local SystemNet = System.Net
local SystemNetSockets = System.Net.Sockets
local ArrayByte = System.Array(System.Byte)
local DCET
System.import(function (out)
  DCET = out.DCET
end)
System.namespace("DCET", function (namespace)
  -- <summary>
  -- 封装Socket,将回调push到主线程处理
  -- </summary>
  namespace.class("TChannel", function (namespace)
    local Dispose, Start, GetService, getStream, Send, OnComplete, ConnectAsync, OnConnectComplete, 
    OnDisconnectComplete, StartRecv, RecvAsync, OnRecvComplete, getIsSending, StartSend, SendAsync, OnSendComplete, 
    internal, __ctor1__, __ctor2__
    internal = function (this)
      this.innArgs = SystemNetSockets.SocketAsyncEventArgs()
      this.outArgs = SystemNetSockets.SocketAsyncEventArgs()
      this.recvBuffer = DCETRuntime.CircularBuffer()
      this.sendBuffer = DCETRuntime.CircularBuffer()
    end
    __ctor1__ = function (this, ipEndPoint, service)
      internal(this)
      System.base(this).__ctor__(this, service, 0 --[[ChannelType.Connect]])
      local packetSize = service.PacketSizeLength
      this.packetSizeCache = ArrayByte:new(packetSize)
      this.memoryStream = service.MemoryStreamManager:GetStream("message", 65535 --[[UInt16.MaxValue]])

      this.socket = SystemNetSockets.Socket(2 --[[AddressFamily.InterNetwork]], 1 --[[SocketType.Stream]], 6 --[[ProtocolType.Tcp]])
      this.socket:setNoDelay(true)
      this.parser = DCET.PacketParser(packetSize, this.recvBuffer, this.memoryStream)
      this.innArgs:addCompleted(System.fn(this, OnComplete))
      this.outArgs:addCompleted(System.fn(this, OnComplete))

      this.RemoteAddress = ipEndPoint:ToString()
      this.remoteIpEndPoint = ipEndPoint
      this.isConnected = false
      this.isSending = false
    end
    __ctor2__ = function (this, socket, service)
      internal(this)
      System.base(this).__ctor__(this, service, 1 --[[ChannelType.Accept]])
      local packetSize = service.PacketSizeLength
      this.packetSizeCache = ArrayByte:new(packetSize)
      this.memoryStream = service.MemoryStreamManager:GetStream("message", 65535 --[[UInt16.MaxValue]])

      this.socket = socket
      this.socket:setNoDelay(true)
      this.parser = DCET.PacketParser(packetSize, this.recvBuffer, this.memoryStream)
      this.innArgs:addCompleted(System.fn(this, OnComplete))
      this.outArgs:addCompleted(System.fn(this, OnComplete))

      this.RemoteAddress = socket:getRemoteEndPoint():ToString()
      this.remoteIpEndPoint = System.cast(SystemNet.IPEndPoint, socket:getRemoteEndPoint())
      this.isConnected = true
      this.isSending = false
    end
    Dispose = function (this)
      if this:getIsDisposed() then
        return
      end

      System.base(this).Dispose(this)

      this.socket:Close()
      this.innArgs:Dispose()
      this.outArgs:Dispose()
      this.innArgs = nil
      this.outArgs = nil
      this.socket = nil
      this.memoryStream:Dispose()
    end
    Start = function (this)
      if this.ChannelType == 1 --[[ChannelType.Accept]] then
        StartRecv(this)
      else
        ConnectAsync(this, this.remoteIpEndPoint)
      end
    end
    GetService = function (this)
      return System.cast(DCET.TService, this.Service)
    end
    getStream = function (this)
      return this.memoryStream
    end
    Send = function (this, stream)
      if this:getIsDisposed() then
        System.throw(System.Exception("TChannel已经被Dispose, 不能发送消息"))
      end

      repeat
        local default = GetService(this).PacketSizeLength
        if default == 4 --[[Packet.PacketSizeLength4]] then
          if stream:getLength() > 1048560 --[[ushort.MaxValue * 16]] then
            System.throw(System.Exception("send packet too large: " .. stream:getLength()))
          end
          DCET.ByteHelper.WriteTo1(this.packetSizeCache, 0, System.toInt32(stream:getLength()))
          break
        elseif default == 2 --[[Packet.PacketSizeLength2]] then
          if stream:getLength() > 65535 --[[UInt16.MaxValue]] then
            System.throw(System.Exception("send packet too large: " .. stream:getLength()))
          end
          DCET.ByteHelper.WriteTo4(this.packetSizeCache, 0, System.toUInt16(stream:getLength()))
          break
        else
          System.throw(System.Exception("packet size must be 2 or 4!"))
        end
      until 1

      this.sendBuffer:Write(this.packetSizeCache, 0, #this.packetSizeCache)
      this.sendBuffer:WriteStream(stream)

      GetService(this):MarkNeedStartSend(this.Id)
    end
    OnComplete = function (this, sender, e)
      repeat
        local default = e:getLastOperation()
        if default == 2 --[[SocketAsyncOperation.Connect]] then
          DCETRuntime.OneThreadSynchronizationContext.getInstance():Post(System.fn(this, OnConnectComplete), e)
          break
        elseif default == 4 --[[SocketAsyncOperation.Receive]] then
          DCETRuntime.OneThreadSynchronizationContext.getInstance():Post(System.fn(this, OnRecvComplete), e)
          break
        elseif default == 7 --[[SocketAsyncOperation.Send]] then
          DCETRuntime.OneThreadSynchronizationContext.getInstance():Post(System.fn(this, OnSendComplete), e)
          break
        elseif default == 3 --[[SocketAsyncOperation.Disconnect]] then
          DCETRuntime.OneThreadSynchronizationContext.getInstance():Post(System.fn(this, OnDisconnectComplete), e)
          break
        else
          System.throw(System.Exception("socket error: " .. e:getLastOperation():EnumToString(SystemNetSockets.SocketAsyncOperation)))
        end
      until 1
    end
    ConnectAsync = function (this, ipEndPoint)
      this.outArgs:setRemoteEndPoint(ipEndPoint)
      if this.socket:ConnectAsync(this.outArgs) then
        return
      end
      OnConnectComplete(this, this.outArgs)
    end
    OnConnectComplete = function (this, o)
      if this.socket == nil then
        return
      end
      local e = System.cast(SystemNetSockets.SocketAsyncEventArgs, o)

      if e:getSocketError() ~= 0 --[[SocketError.Success]] then
        this:OnError(e:getSocketError())
        return
      end

      e:setRemoteEndPoint(nil)
      this.isConnected = true
      StartRecv(this)
      GetService(this):MarkNeedStartSend(this.Id)
    end
    OnDisconnectComplete = function (this, o)
      local e = System.cast(SystemNetSockets.SocketAsyncEventArgs, o)
      this:OnError(e:getSocketError())
    end
    StartRecv = function (this)
      local size = this.recvBuffer.ChunkSize - this.recvBuffer:getLastIndex()
      RecvAsync(this, this.recvBuffer:getLast(), this.recvBuffer:getLastIndex(), size)
    end
    RecvAsync = function (this, buffer, offset, count)
      System.try(function ()
        this.innArgs:SetBuffer(buffer, offset, count)
      end, function (default)
        local e = default
        System.throw(System.Exception("socket set buffer error: " .. #buffer .. ", " .. offset .. ", " .. count, e))
      end)

      if this.socket:ReceiveAsync(this.innArgs) then
        return
      end
      OnRecvComplete(this, this.innArgs)
    end
    OnRecvComplete = function (this, o)
      if this.socket == nil then
        return
      end
      local e = System.cast(SystemNetSockets.SocketAsyncEventArgs, o)

      if e:getSocketError() ~= 0 --[[SocketError.Success]] then
        this:OnError(e:getSocketError())
        return
      end

      if e:getBytesTransferred() == 0 then
        this:OnError(102008 --[[ErrorCode.ERR_PeerDisconnect]])
        return
      end

      this.recvBuffer:setLastIndex(this.recvBuffer:getLastIndex() + e:getBytesTransferred())
      if this.recvBuffer:getLastIndex() == this.recvBuffer.ChunkSize then
        this.recvBuffer:AddLast()
        this.recvBuffer:setLastIndex(0)
      end

      -- 收到消息回调
      while true do
        local default = System.try(function ()
          if not this.parser:Parse() then
            return
          end
        end, function (default)
          local ee = default
          DCET.Log.Error1("ip: " .. this.RemoteAddress .. " " .. System.toString(ee))
          this:OnError(102010 --[[ErrorCode.ERR_SocketError]])
          return true
        end)
        if default then
          return
        end

        System.try(function ()
          this:OnRead(this.parser:GetPacket())
        end, function (default)
          local ee = default
          DCET.Log.Error(ee)
        end)
      end

      if this.socket == nil then
        return
      end

      StartRecv(this)
    end
    getIsSending = function (this)
      return this.isSending
    end
    StartSend = function (this)
      if not this.isConnected then
        return
      end

      -- 没有数据需要发送
      if this.sendBuffer:getLength() == 0 then
        this.isSending = false
        return
      end

      this.isSending = true

      local sendSize = this.sendBuffer.ChunkSize - this.sendBuffer:getFirstIndex()
      if sendSize > this.sendBuffer:getLength() then
        sendSize = System.toInt32(this.sendBuffer:getLength())
      end

      SendAsync(this, this.sendBuffer:getFirst(), this.sendBuffer:getFirstIndex(), sendSize)
    end
    SendAsync = function (this, buffer, offset, count)
      System.try(function ()
        this.outArgs:SetBuffer(buffer, offset, count)
      end, function (default)
        local e = default
        System.throw(System.Exception("socket set buffer error: " .. #buffer .. ", " .. offset .. ", " .. count, e))
      end)
      if this.socket:SendAsync(this.outArgs) then
        return
      end
      OnSendComplete(this, this.outArgs)
    end
    OnSendComplete = function (this, o)
      if this.socket == nil then
        return
      end
      local e = System.cast(SystemNetSockets.SocketAsyncEventArgs, o)

      if e:getSocketError() ~= 0 --[[SocketError.Success]] then
        this:OnError(e:getSocketError())
        return
      end

      if e:getBytesTransferred() == 0 then
        this:OnError(102008 --[[ErrorCode.ERR_PeerDisconnect]])
        return
      end

      this.sendBuffer:setFirstIndex(this.sendBuffer:getFirstIndex() + e:getBytesTransferred())
      if this.sendBuffer:getFirstIndex() == this.sendBuffer.ChunkSize then
        this.sendBuffer:setFirstIndex(0)
        this.sendBuffer:RemoveFirst()
      end

      StartSend(this)
    end
    return {
      base = function (out)
        return {
          out.DCET.AChannel
        }
      end,
      isSending = false,
      isConnected = false,
      Dispose = Dispose,
      Start = Start,
      getStream = getStream,
      Send = Send,
      ConnectAsync = ConnectAsync,
      StartRecv = StartRecv,
      RecvAsync = RecvAsync,
      getIsSending = getIsSending,
      StartSend = StartSend,
      SendAsync = SendAsync,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
  end)
end)
