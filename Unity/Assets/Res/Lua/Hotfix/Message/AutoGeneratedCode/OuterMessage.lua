-- Generated by CSharp.lua Compiler
local System = System
local ListInt32 = System.List(System.Int32)
local ListInt64 = System.List(System.Int64)
local ListSingle = System.List(System.Single)
local ListString = System.List(System.String)
local DCET
local ListUnitInfo
local ListPlayerInfo
System.import(function (out)
  DCET = out.DCET
  ListUnitInfo = System.List(DCET.UnitInfo)
  ListPlayerInfo = System.List(DCET.PlayerInfo)
end)
System.namespace("DCET", function (namespace)
  -- 客户端由于Lua模式需要自行配置父接口的字段（如RpcId、ActorId等），服务器则不需要。
  namespace.class("C2M_TestRequest", function (namespace)
    local getRpcId, setRpcId, getActorId, setActorId
    getRpcId, setRpcId = System.property("RpcId")
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "request", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10001 --[[OuterOpcode.C2M_TestRequest]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("M2C_TestResponse", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "response", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10002 --[[OuterOpcode.M2C_TestResponse]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("Actor_TransferRequest", function (namespace)
    local getRpcId, setRpcId, getActorId, setActorId
    getRpcId, setRpcId = System.property("RpcId")
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      MapIndex = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "MapIndex", 0x6, System.Int32, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10003 --[[OuterOpcode.Actor_TransferRequest]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("Actor_TransferResponse", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10004 --[[OuterOpcode.Actor_TransferResponse]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2G_EnterMap", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10005 --[[OuterOpcode.C2G_EnterMap]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("G2C_EnterMap", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId, __ctor__
    __ctor__ = function (this)
      this.Units = ListUnitInfo()
    end
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      UnitId = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "UnitId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "Units", 0x6, System.List(out.DCET.UnitInfo), System.apply(out.ProtoBuf.ProtoMemberAttribute(5), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10006 --[[OuterOpcode.G2C_EnterMap]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("UnitInfo", function (namespace)
    return {
      UnitId = 0,
      X = 0,
      Y = 0,
      Z = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "UnitId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "X", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "Y", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "Z", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10007 --[[OuterOpcode.UnitInfo]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("M2C_CreateUnits", function (namespace)
    local getActorId, setActorId, __ctor__
    __ctor__ = function (this)
      this.Units = ListUnitInfo()
    end
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorMessage
        }
      end,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Units", 0x6, System.List(out.DCET.UnitInfo), System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10008 --[[OuterOpcode.M2C_CreateUnits]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("Frame_ClickMap", function (namespace)
    local getRpcId, setRpcId, getActorId, setActorId
    getRpcId, setRpcId = System.property("RpcId")
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationMessage
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      X = 0,
      Y = 0,
      Z = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "X", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "Y", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "Z", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(5), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10009 --[[OuterOpcode.Frame_ClickMap]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("M2C_PathfindingResult", function (namespace)
    local getActorId, setActorId, __ctor__
    __ctor__ = function (this)
      this.Xs = ListSingle()
      this.Ys = ListSingle()
      this.Zs = ListSingle()
    end
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorMessage
        }
      end,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      Id = 0,
      X = 0,
      Y = 0,
      Z = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Id", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "X", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "Xs", 0x6, System.List(System.Single), System.apply(out.ProtoBuf.ProtoMemberAttribute(6), function (default) default:setIsRequired(true) end) },
            { "Y", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "Ys", 0x6, System.List(System.Single), System.apply(out.ProtoBuf.ProtoMemberAttribute(7), function (default) default:setIsRequired(true) end) },
            { "Z", 0x6, System.Single, System.apply(out.ProtoBuf.ProtoMemberAttribute(5), function (default) default:setIsRequired(true) end) },
            { "Zs", 0x6, System.List(System.Single), System.apply(out.ProtoBuf.ProtoMemberAttribute(8), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10010 --[[OuterOpcode.M2C_PathfindingResult]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2R_Ping", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10011 --[[OuterOpcode.C2R_Ping]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("R2C_Ping", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10012 --[[OuterOpcode.R2C_Ping]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("G2C_Test", function (namespace)
    return {
      base = function (out)
        return {
          out.DCET.IMessage
        }
      end,
      __metadata__ = function (out)
        return {
          class = { 0x6, out.DCET.MessageAttribute(10013 --[[OuterOpcode.G2C_Test]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2M_Reload", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Account", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "Password", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10014 --[[OuterOpcode.C2M_Reload]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("M2C_Reload", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10015 --[[OuterOpcode.M2C_Reload]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2R_Login", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Account", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "Password", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10016 --[[OuterOpcode.C2R_Login]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("R2C_Login", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      Key = 0,
      GateId = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "Address", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "GateId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(6), function (default) default:setIsRequired(true) end) },
            { "Key", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(5), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10017 --[[OuterOpcode.R2C_Login]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2G_LoginGate", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      Key = 0,
      GateId = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "GateId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "Key", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10018 --[[OuterOpcode.C2G_LoginGate]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("G2C_LoginGate", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      PlayerId = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "PlayerId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10019 --[[OuterOpcode.G2C_LoginGate]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("G2C_TestHotfixMessage", function (namespace)
    return {
      base = function (out)
        return {
          out.DCET.IMessage
        }
      end,
      __metadata__ = function (out)
        return {
          properties = {
            { "Info", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10020 --[[OuterOpcode.G2C_TestHotfixMessage]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2M_TestActorRequest", function (namespace)
    local getRpcId, setRpcId, getActorId, setActorId
    getRpcId, setRpcId = System.property("RpcId")
    getActorId, setActorId = System.property("ActorId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      ActorId = 0,
      getActorId = getActorId,
      setActorId = setActorId,
      __metadata__ = function (out)
        return {
          properties = {
            { "ActorId", 0x106, System.Int64, getActorId, setActorId, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "Info", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10021 --[[OuterOpcode.C2M_TestActorRequest]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("M2C_TestActorResponse", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IActorLocationResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Info", 0x6, System.String, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10022 --[[OuterOpcode.M2C_TestActorResponse]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("PlayerInfo", function (namespace)
    return {
      base = function (out)
        return {
          out.DCET.IMessage
        }
      end,
      RpcId = 0,
      __metadata__ = function (out)
        return {
          properties = {
            { "RpcId", 0x6, System.Int64, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10023 --[[OuterOpcode.PlayerInfo]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("C2G_PlayerInfo", function (namespace)
    local getRpcId, setRpcId
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IRequest
        }
      end,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __metadata__ = function (out)
        return {
          properties = {
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10024 --[[OuterOpcode.C2G_PlayerInfo]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)

  namespace.class("G2C_PlayerInfo", function (namespace)
    local getError, setError, getMessage, setMessage, getRpcId, setRpcId, __ctor__
    __ctor__ = function (this)
      this.PlayerInfos = ListPlayerInfo()
      this.TestRepeatedString = ListString()
      this.TestRepeatedInt32 = ListInt32()
      this.TestRepeatedInt64 = ListInt64()
    end
    getError, setError = System.property("Error")
    getMessage, setMessage = System.property("Message")
    getRpcId, setRpcId = System.property("RpcId")
    return {
      base = function (out)
        return {
          out.DCET.IResponse
        }
      end,
      Error = 0,
      getError = getError,
      setError = setError,
      getMessage = getMessage,
      setMessage = setMessage,
      RpcId = 0,
      getRpcId = getRpcId,
      setRpcId = setRpcId,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Error", 0x106, System.Int32, getError, setError, System.apply(out.ProtoBuf.ProtoMemberAttribute(1), function (default) default:setIsRequired(true) end) },
            { "Message", 0x106, System.String, getMessage, setMessage, System.apply(out.ProtoBuf.ProtoMemberAttribute(2), function (default) default:setIsRequired(true) end) },
            { "PlayerInfo", 0x6, out.DCET.PlayerInfo, System.apply(out.ProtoBuf.ProtoMemberAttribute(4), function (default) default:setIsRequired(true) end) },
            { "PlayerInfos", 0x6, System.List(out.DCET.PlayerInfo), System.apply(out.ProtoBuf.ProtoMemberAttribute(5), function (default) default:setIsRequired(true) end) },
            { "RpcId", 0x106, System.Int32, getRpcId, setRpcId, System.apply(out.ProtoBuf.ProtoMemberAttribute(3), function (default) default:setIsRequired(true) end) },
            { "TestRepeatedInt32", 0x6, System.List(System.Int32), System.apply(out.ProtoBuf.ProtoMemberAttribute(7), function (default) default:setIsRequired(true) end) },
            { "TestRepeatedInt64", 0x6, System.List(System.Int64), System.apply(out.ProtoBuf.ProtoMemberAttribute(8), function (default) default:setIsRequired(true) end) },
            { "TestRepeatedString", 0x6, System.List(System.String), System.apply(out.ProtoBuf.ProtoMemberAttribute(6), function (default) default:setIsRequired(true) end) }
          },
          class = { 0x6, out.DCET.MessageAttribute(10025 --[[OuterOpcode.G2C_PlayerInfo]]), out.ProtoBuf.ProtoContractAttribute() }
        }
      end
    }
  end)
end)
