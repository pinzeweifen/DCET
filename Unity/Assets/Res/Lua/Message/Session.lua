-- Generated by CSharp.lua Compiler
local System = System
local Linq = System.Linq.Enumerable
local DCET = DCET
local DCETRuntime = DCETRuntime
local ArrayByte = System.Array(System.Byte)
local DCET
local DictInt32Delegate
System.import(function (out)
  DCET = out.DCET
  DictInt32Delegate = System.Dictionary(System.Int32, System.Delegate)
end)
System.namespace("DCET", function (namespace)
  namespace.class("SessionAwakeSystem", function (namespace)
    local Awake
    Awake = function (this, self, b)
      self:Awake(b)
    end
    return {
      base = function (out)
        return {
          out.DCET.AwakeSystem_2(out.DCET.Session, out.DCET.AChannel)
        }
      end,
      Awake = Awake,
      __metadata__ = function (out)
        return {
          class = { 0x6, out.DCET.ObjectSystemAttribute() }
        }
      end
    }
  end)

  namespace.class("Session", function (namespace)
    local RpcId, getNetwork, getError, setError, Awake, Dispose, getRemoteAddress, getChannelType, 
    getStream, OnRead, Run, RunMessage, CallWithoutException, Call, Reply, Send, 
    Send1, Send2, __ctor__
    __ctor__ = function (this)
      this.requestCallback = DictInt32Delegate()
      this.opcodeBytes = ArrayByte:new(2)
      System.base(this).__ctor__(this)
    end
    RpcId = 0
    getNetwork = function (this)
      return this:GetParent(DCET.NetworkComponent)
    end
    getError = function (this)
      return this.channel.Error
    end
    setError = function (this, value)
      this.channel.Error = value
    end
    Awake = function (this, aChannel)
      local timeNow = DCET.TimeHelper.Now()
      this.LastRecvTime = timeNow
      this.LastSendTime = timeNow

      this.channel = aChannel
      this.requestCallback:Clear()
      local id = this.Id
      this.channel:addErrorCallback(function (c, e)
        getNetwork(this):Remove(id)
      end)
      this.channel:addReadCallback(System.fn(this, OnRead))
    end
    Dispose = function (this)
      if this:getIsDisposed() then
        return
      end

      local default = getNetwork(this)
      if default ~= nil then
        default:Remove(this.Id)
      end

      System.base(this).Dispose(this)

      for _, action in System.each(Linq.ToArray(this.requestCallback:getValues())) do
        local default = DCET.ErrorResponse()
        default:setError(getError(this))
        action(default)
      end

      local error = this.channel.Error
      if this.channel.Error ~= 0 then
        DCET.Log.Info("session dispose: " .. this.Id .. " ErrorCode: " .. error .. ", please see ErrorCode.cs!")
      end

      this.channel:Dispose()

      this.requestCallback:Clear()
    end
    getRemoteAddress = function (this)
      return this.channel.RemoteAddress
    end
    getChannelType = function (this)
      return this.channel.ChannelType
    end
    getStream = function (this)
      return this.channel:getStream()
    end
    OnRead = function (this, memoryStream)
      System.try(function ()
        Run(this, memoryStream)
      end, function (default)
        local e = default
        DCET.Log.Error(e)
      end)
    end
    Run = function (this, memoryStream)
      memoryStream:Seek(2 --[[Packet.MessageIndex]], 0 --[[SeekOrigin.Begin]])
      local opcode = System.BitConverter.ToUInt16(memoryStream:GetBuffer(), 0 --[[Packet.OpcodeIndex]])

      local message
      local default = System.try(function ()
        local instance = DCET.OpcodeTypeComponent.Instance:GetInstance(opcode)
        message = getNetwork(this).MessagePacker:DeserializeFrom3(instance, memoryStream)

        if DCET.OpcodeHelper.IsNeedDebugLogMessage(opcode) then
          DCET.Log.Msg(message)
        end
      end, function (default)
        local e = default
        -- 出现任何消息解析异常都要断开Session，防止客户端伪造消息
        DCET.Log.Error1("opcode: " .. opcode .. " " .. getNetwork(this):getCount() .. " " .. System.toString(e) .. ", ip: " .. getRemoteAddress(this))
        setError(this, 100005 --[[ErrorCode.ERR_PacketParserError]])
        getNetwork(this):Remove(this.Id)
        return true
      end)
      if default then
        return
      end

      RunMessage(this, opcode, message)
    end
    RunMessage = function (this, opcode, message)
      this.LastRecvTime = DCET.TimeHelper.Now()

      local response = message
      if not (System.is(response, DCET.IResponse)) then
        getNetwork(this).MessageDispatcher:Dispatch(this, opcode, message)
        return
      end


      local action
      local default
      default, action = this.requestCallback:TryGetValue(response:getRpcId())
      if not default then
        System.throw(System.Exception("not found rpc, response message: " .. DCET.StringHelper.MessageToStr(response)))
      end
      this.requestCallback:RemoveKey(response:getRpcId())

      action(response)
    end
    CallWithoutException = function (this, request)
      local default = RpcId + 1
      RpcId = default
      local rpcId = default
      local tcs = System.TaskCompletionSource()
      this.requestCallback:set(rpcId, function (response)
        if System.is(response, DCET.ErrorResponse) then
          tcs:SetException(System.Exception("Rpc error: " .. DCETRuntime.MongoHelper.ToJson(response)))
          return
        end

        tcs:SetResult(response)
      end)

      request:setRpcId(rpcId)
      Send(this, request)
      return tcs:getTask()
    end
    Call = function (this, request)
      local default = RpcId + 1
      RpcId = default
      local rpcId = default
      local tcs = System.TaskCompletionSource()
      this.requestCallback:set(rpcId, function (response)
        if System.is(response, DCET.ErrorResponse) then
          tcs:SetException(System.Exception("Rpc error: " .. DCETRuntime.MongoHelper.ToJson(response)))
          return
        end

        if DCET.ErrorCode.IsRpcNeedThrowException(response:getError()) then
          tcs:SetException(System.Exception("Rpc error: " .. DCETRuntime.MongoHelper.ToJson(response)))
          return
        end

        tcs:SetResult(response)
      end)

      request:setRpcId(rpcId)
      Send(this, request)
      return tcs:getTask()
    end
    Reply = function (this, message)
      if this:getIsDisposed() then
        System.throw(System.Exception("session已经被Dispose了"))
      end
      Send(this, message)
    end
    Send = function (this, message)
      local opcode = DCET.OpcodeTypeComponent.Instance:GetOpcode(message:GetType())

      Send1(this, opcode, message)
    end
    Send1 = function (this, opcode, message)
      if this:getIsDisposed() then
        System.throw(System.Exception("session已经被Dispose了"))
      end

      this.LastSendTime = DCET.TimeHelper.Now()

      if DCET.OpcodeHelper.IsNeedDebugLogMessage(opcode) then
        DCET.Log.Msg(message)
      end

      local stream = getStream(this)

      stream:Seek(2 --[[Packet.MessageIndex]], 0 --[[SeekOrigin.Begin]])
      stream:SetLength(2 --[[Packet.MessageIndex]])
      getNetwork(this).MessagePacker:SerializeTo1(message, stream)
      stream:Seek(0, 0 --[[SeekOrigin.Begin]])

      DCET.ByteHelper.WriteTo4(this.opcodeBytes, 0, opcode)
      System.Array.Copy(this.opcodeBytes, 0, stream:GetBuffer(), 0, #this.opcodeBytes)

      Send2(this, stream)
    end
    Send2 = function (this, stream)
      this.channel:Send(stream)
    end
    return {
      base = function (out)
        return {
          out.DCET.Entity
        }
      end,
      LastRecvTime = 0,
      LastSendTime = 0,
      getNetwork = getNetwork,
      getError = getError,
      setError = setError,
      Awake = Awake,
      Dispose = Dispose,
      getRemoteAddress = getRemoteAddress,
      getChannelType = getChannelType,
      getStream = getStream,
      OnRead = OnRead,
      CallWithoutException = CallWithoutException,
      Call = Call,
      Reply = Reply,
      Send = Send,
      Send1 = Send1,
      Send2 = Send2,
      __ctor__ = __ctor__
    }
  end)
end)
