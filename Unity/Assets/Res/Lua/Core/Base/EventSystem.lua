-- Generated by CSharp.lua Compiler
local System = System
local Linq = System.Linq.Enumerable
local ListObject = System.List(System.Object)
local QueueInt64 = System.Queue(System.Int64)
local HashSetType = System.HashSet(System.Type)
local DictTypeInt32 = System.Dictionary(System.Type, System.Int32)
local DictStringListObject = System.Dictionary(System.String, ListObject)
local DCET
local DictInt64Entity
local UnOrderMultiMapSet_2TypeType
local UnOrderMultiMap_2TypeILoadSystem
local UnOrderMultiMap_2TypeIAwakeSystem
local UnOrderMultiMap_2TypeIStartSystem
local UnOrderMultiMap_2TypeIChangeSystem
local UnOrderMultiMap_2TypeIUpdateSystem
local UnOrderMultiMap_2TypeIDestroySystem
local UnOrderMultiMap_2TypeILateUpdateSystem
local UnOrderMultiMap_2TypeIDeserializeSystem
System.import(function (out)
  DCET = out.DCET
  DictInt64Entity = System.Dictionary(System.Int64, DCET.Entity)
  UnOrderMultiMapSet_2TypeType = DCET.UnOrderMultiMapSet_2(System.Type, System.Type)
  UnOrderMultiMap_2TypeILoadSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.ILoadSystem)
  UnOrderMultiMap_2TypeIAwakeSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IAwakeSystem)
  UnOrderMultiMap_2TypeIStartSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IStartSystem)
  UnOrderMultiMap_2TypeIChangeSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IChangeSystem)
  UnOrderMultiMap_2TypeIUpdateSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IUpdateSystem)
  UnOrderMultiMap_2TypeIDestroySystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IDestroySystem)
  UnOrderMultiMap_2TypeILateUpdateSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.ILateUpdateSystem)
  UnOrderMultiMap_2TypeIDeserializeSystem = DCET.UnOrderMultiMap_2(System.Type, DCET.IDeserializeSystem)
end)
System.namespace("DCET", function (namespace)
  namespace.class("EventSystem", function (namespace)
    local GetAllType, AddType, Init, RegisterEvent, GetTypes, RegisterSystem, Remove, Get, 
    IsRegister, Deserialize, Awake, Awake1, Awake2, Awake3, Awake4, Change, 
    Load, Start, Destroy, Update, LateUpdate, Run, Run1, Run2, 
    Run3, ToString, __ctor__
    __ctor__ = function (this)
      this.allComponents = DictInt64Entity()
      this.attributeTypeMap = UnOrderMultiMapSet_2TypeType()
      this.allEvents = DictStringListObject()
      this.awakeSystems = UnOrderMultiMap_2TypeIAwakeSystem()
      this.startSystems = UnOrderMultiMap_2TypeIStartSystem()
      this.destroySystems = UnOrderMultiMap_2TypeIDestroySystem()
      this.loadSystems = UnOrderMultiMap_2TypeILoadSystem()
      this.updateSystems = UnOrderMultiMap_2TypeIUpdateSystem()
      this.lateUpdateSystems = UnOrderMultiMap_2TypeILateUpdateSystem()
      this.changeSystems = UnOrderMultiMap_2TypeIChangeSystem()
      this.deserializeSystems = UnOrderMultiMap_2TypeIDeserializeSystem()
      this.updates = QueueInt64()
      this.updates2 = QueueInt64()
      this.starts = QueueInt64()
      this.loaders = QueueInt64()
      this.loaders2 = QueueInt64()
      this.lateUpdates = QueueInt64()
      this.lateUpdates2 = QueueInt64()
      this.allType = HashSetType()
    end
    GetAllType = function (this)
      return this.allType
    end
    -- <summary>
    -- 加入带有Attribute的Type，用于自动绑定类型事件
    -- </summary>
    AddType = function (this, type)
      if type ~= nil then
        this.allType:Add(type)
      end
    end
    Init = function (this)
      this.attributeTypeMap:Clear()

      for _, type in System.each(this.allType) do
        local continue
        repeat
          local objects = type:GetCustomAttributes(System.typeof(DCET.BaseAttribute), true)

          if #objects == 0 then
            continue = true
            break
          end

          local baseAttribute = System.cast(DCET.BaseAttribute, objects:get(0))
          this.attributeTypeMap:Add(baseAttribute.AttributeType, type)
          continue = true
        until 1
        if not continue then
          break
        end
      end

      this.awakeSystems:Clear()
      this.lateUpdateSystems:Clear()
      this.updateSystems:Clear()
      this.startSystems:Clear()
      this.loadSystems:Clear()
      this.changeSystems:Clear()
      this.destroySystems:Clear()
      this.deserializeSystems:Clear()

      for _, type in System.each(GetTypes(this, System.typeof(DCET.ObjectSystemAttribute))) do
        local obj = System.Activator.CreateInstance(type)

        repeat
          local default = obj
          if System.is(default, DCET.IAwakeSystem) then
            this.awakeSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.IUpdateSystem) then
            this.updateSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.ILateUpdateSystem) then
            this.lateUpdateSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.IStartSystem) then
            this.startSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.IDestroySystem) then
            this.destroySystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.ILoadSystem) then
            this.loadSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.IChangeSystem) then
            this.changeSystems:Add(default:Type(), default)
            break
          elseif System.is(default, DCET.IDeserializeSystem) then
            this.deserializeSystems:Add(default:Type(), default)
            break
          end
        until 1
      end

      this.allEvents:Clear()
      if this.attributeTypeMap:ContainsKey(System.typeof(DCET.EventAttribute)) then
        for _, type in System.each(this.attributeTypeMap:get(System.typeof(DCET.EventAttribute))) do
          local attrs = type:GetCustomAttributes(System.typeof(DCET.EventAttribute), false)

          for _, attr in System.each(attrs) do
            local aEventAttribute = System.cast(DCET.EventAttribute, attr)
            local obj = System.Activator.CreateInstance(type)
            local iEvent = System.as(obj, DCET.IEvent)
            if iEvent == nil then
              DCET.Log.Error1(obj:GetType():getName() .. " 没有继承IEvent")
            end
            RegisterEvent(this, aEventAttribute.Type, iEvent)
          end
        end
      end

      Load(this)
    end
    RegisterEvent = function (this, eventId, e)
      if not this.allEvents:ContainsKey(eventId) then
        this.allEvents:AddKeyValue(eventId, ListObject())
      end
      this.allEvents:get(eventId):Add(e)
    end
    GetTypes = function (this, systemAttributeType)
      if not this.attributeTypeMap:ContainsKey(systemAttributeType) then
        return HashSetType()
      end
      return this.attributeTypeMap:get(systemAttributeType)
    end
    RegisterSystem = function (this, component, isRegister)
      if not isRegister then
        Remove(this, component.InstanceId)
        return
      end
      this.allComponents:AddKeyValue(component.InstanceId, component)

      local type = component:GetType()

      if this.loadSystems:ContainsKey(type) then
        this.loaders:Enqueue(component.InstanceId)
      end

      if this.updateSystems:ContainsKey(type) then
        this.updates:Enqueue(component.InstanceId)
      end

      if this.startSystems:ContainsKey(type) then
        this.starts:Enqueue(component.InstanceId)
      end

      if this.lateUpdateSystems:ContainsKey(type) then
        this.lateUpdates:Enqueue(component.InstanceId)
      end
    end
    Remove = function (this, instanceId)
      this.allComponents:RemoveKey(instanceId)
    end
    Get = function (this, instanceId)
      local component
      local _
      _, component = this.allComponents:TryGetValue(instanceId)
      return component
    end
    IsRegister = function (this, instanceId)
      return this.allComponents:ContainsKey(instanceId)
    end
    Deserialize = function (this, component)
      local iDeserializeSystems = this.deserializeSystems:get(component:GetType())
      if iDeserializeSystems == nil then
        return
      end

      for _, deserializeSystem in System.each(iDeserializeSystems) do
        local continue
        repeat
          if deserializeSystem == nil then
            continue = true
            break
          end

          System.try(function ()
            deserializeSystem:Run(component)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Awake = function (this, component)
      local iAwakeSystems = this.awakeSystems:get(component:GetType())
      if iAwakeSystems == nil then
        return
      end

      for _, aAwakeSystem in System.each(iAwakeSystems) do
        local continue
        repeat
          if aAwakeSystem == nil then
            continue = true
            break
          end

          local iAwake = System.as(aAwakeSystem, DCET.IAwake)
          if iAwake == nil then
            continue = true
            break
          end

          System.try(function ()
            iAwake:Run(component)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Awake1 = function (this, component, p1, P1)
      local iAwakeSystems = this.awakeSystems:get(component:GetType())
      if iAwakeSystems == nil then
        return
      end

      for _, aAwakeSystem in System.each(iAwakeSystems) do
        local continue
        repeat
          if aAwakeSystem == nil then
            continue = true
            break
          end

          local iAwake = System.as(aAwakeSystem, DCET.IAwake_1(P1))
          if iAwake == nil then
            continue = true
            break
          end

          System.try(function ()
            iAwake:Run(component, p1)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Awake2 = function (this, component, p1, p2, P1, P2)
      local iAwakeSystems = this.awakeSystems:get(component:GetType())
      if iAwakeSystems == nil then
        return
      end

      for _, aAwakeSystem in System.each(iAwakeSystems) do
        local continue
        repeat
          if aAwakeSystem == nil then
            continue = true
            break
          end

          local iAwake = System.as(aAwakeSystem, DCET.IAwake_2(P1, P2))
          if iAwake == nil then
            continue = true
            break
          end

          System.try(function ()
            iAwake:Run(component, p1, p2)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Awake3 = function (this, component, p1, p2, p3, P1, P2, P3)
      local iAwakeSystems = this.awakeSystems:get(component:GetType())
      if iAwakeSystems == nil then
        return
      end

      for _, aAwakeSystem in System.each(iAwakeSystems) do
        local continue
        repeat
          if aAwakeSystem == nil then
            continue = true
            break
          end

          local iAwake = System.as(aAwakeSystem, DCET.IAwake_3(P1, P2, P3))
          if iAwake == nil then
            continue = true
            break
          end

          System.try(function ()
            iAwake:Run(component, p1, p2, p3)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Awake4 = function (this, component, p1, p2, p3, p4, P1, P2, P3, P4)
      local iAwakeSystems = this.awakeSystems:get(component:GetType())
      if iAwakeSystems == nil then
        return
      end

      for _, aAwakeSystem in System.each(iAwakeSystems) do
        local continue
        repeat
          if aAwakeSystem == nil then
            continue = true
            break
          end

          local iAwake = System.as(aAwakeSystem, DCET.IAwake_4(P1, P2, P3, P4))
          if iAwake == nil then
            continue = true
            break
          end

          System.try(function ()
            iAwake:Run(component, p1, p2, p3, p4)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Change = function (this, component)
      local iChangeSystems = this.changeSystems:get(component:GetType())
      if iChangeSystems == nil then
        return
      end

      for _, iChangeSystem in System.each(iChangeSystems) do
        local continue
        repeat
          if iChangeSystem == nil then
            continue = true
            break
          end

          System.try(function ()
            iChangeSystem:Run(component)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Load = function (this)
      while #this.loaders > 0 do
        local continue
        repeat
          local instanceId = this.loaders:Dequeue()
          local component
          local default
          default, component = this.allComponents:TryGetValue(instanceId)
          if not default then
            continue = true
            break
          end
          if component:getIsDisposed() then
            continue = true
            break
          end

          local iLoadSystems = this.loadSystems:get(component:GetType())
          if iLoadSystems == nil then
            continue = true
            break
          end

          this.loaders2:Enqueue(instanceId)

          for _, iLoadSystem in System.each(iLoadSystems) do
            System.try(function ()
              iLoadSystem:Run(component)
            end, function (default)
              local e = default
              DCET.Log.Error(e)
            end)
          end
          continue = true
        until 1
        if not continue then
          break
        end
      end

      this.loaders, this.loaders2 = DCET.ObjectHelper.Swap(this.loaders, this.loaders2, QueueInt64)
    end
    Start = function (this)
      while #this.starts > 0 do
        local continue
        repeat
          local instanceId = this.starts:Dequeue()
          local component
          local default
          default, component = this.allComponents:TryGetValue(instanceId)
          if not default then
            continue = true
            break
          end

          local iStartSystems = this.startSystems:get(component:GetType())
          if iStartSystems == nil then
            continue = true
            break
          end

          for _, iStartSystem in System.each(iStartSystems) do
            System.try(function ()
              iStartSystem:Run(component)
            end, function (default)
              local e = default
              DCET.Log.Error(e)
            end)
          end
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Destroy = function (this, component)
      local iDestroySystems = this.destroySystems:get(component:GetType())
      if iDestroySystems == nil then
        return
      end

      for _, iDestroySystem in System.each(iDestroySystems) do
        local continue
        repeat
          if iDestroySystem == nil then
            continue = true
            break
          end

          System.try(function ()
            iDestroySystem:Run(component)
          end, function (default)
            local e = default
            DCET.Log.Error(e)
          end)
          continue = true
        until 1
        if not continue then
          break
        end
      end
    end
    Update = function (this)
      Start(this)

      while #this.updates > 0 do
        local continue
        repeat
          local instanceId = this.updates:Dequeue()
          local component
          local default
          default, component = this.allComponents:TryGetValue(instanceId)
          if not default then
            continue = true
            break
          end
          if component:getIsDisposed() then
            continue = true
            break
          end

          local iUpdateSystems = this.updateSystems:get(component:GetType())
          if iUpdateSystems == nil then
            continue = true
            break
          end

          this.updates2:Enqueue(instanceId)

          for _, iUpdateSystem in System.each(iUpdateSystems) do
            System.try(function ()
              iUpdateSystem:Run(component)
            end, function (default)
              local e = default
              DCET.Log.Error(e)
            end)
          end
          continue = true
        until 1
        if not continue then
          break
        end
      end

      this.updates, this.updates2 = DCET.ObjectHelper.Swap(this.updates, this.updates2, QueueInt64)
    end
    LateUpdate = function (this)
      while #this.lateUpdates > 0 do
        local continue
        repeat
          local instanceId = this.lateUpdates:Dequeue()
          local component
          local default
          default, component = this.allComponents:TryGetValue(instanceId)
          if not default then
            continue = true
            break
          end
          if component:getIsDisposed() then
            continue = true
            break
          end

          local iLateUpdateSystems = this.lateUpdateSystems:get(component:GetType())
          if iLateUpdateSystems == nil then
            continue = true
            break
          end

          this.lateUpdates2:Enqueue(instanceId)

          for _, iLateUpdateSystem in System.each(iLateUpdateSystems) do
            System.try(function ()
              iLateUpdateSystem:Run(component)
            end, function (default)
              local e = default
              DCET.Log.Error(e)
            end)
          end
          continue = true
        until 1
        if not continue then
          break
        end
      end

      this.lateUpdates, this.lateUpdates2 = DCET.ObjectHelper.Swap(this.lateUpdates, this.lateUpdates2, QueueInt64)
    end
    Run = function (this, type)
      local iEvents
      local default
      default, iEvents = this.allEvents:TryGetValue(type)
      if not default then
        return
      end
      for _, aEvent in System.each(iEvents) do
        aEvent = System.cast(DCET.AEvent, aEvent)
        System.try(function ()
          aEvent:Run()
        end, function (default)
          local e = default
          DCET.Log.Error(e)
        end)
      end
    end
    Run1 = function (this, type, a, A)
      local iEvents
      local default
      default, iEvents = this.allEvents:TryGetValue(type)
      if not default then
        return
      end
      for _, obj in System.each(iEvents) do
        System.try(function ()
          local aEvent = obj
          if System.is(aEvent, DCET.AEvent_1(A)) then
            aEvent:Run(a)
          else
            local eventProxy = obj
            if System.is(eventProxy, DCET.EventProxy) then
              eventProxy:Handle1(a)
            end
          end
        end, function (default)
          local e = default
          DCET.Log.Error(e)
        end)
      end
    end
    Run2 = function (this, type, a, b, A, B)
      local iEvents
      local default
      default, iEvents = this.allEvents:TryGetValue(type)
      if not default then
        return
      end
      for _, obj in System.each(iEvents) do
        System.try(function ()
          local aEvent = obj
          if System.is(aEvent, DCET.AEvent_2(A, B)) then
            aEvent:Run(a, b)
          else
            local eventProxy = obj
            if System.is(eventProxy, DCET.EventProxy) then
              eventProxy:Handle2(a, b)
            end
          end
        end, function (default)
          local e = default
          DCET.Log.Error(e)
        end)
      end
    end
    Run3 = function (this, type, a, b, c, A, B, C)
      local iEvents
      local default
      default, iEvents = this.allEvents:TryGetValue(type)
      if not default then
        return
      end
      for _, obj in System.each(iEvents) do
        System.try(function ()
          local aEvent = obj
          if System.is(aEvent, DCET.AEvent_3(A, B, C)) then
            aEvent:Run(a, b, c)
          else
            local eventProxy = obj
            if System.is(eventProxy, DCET.EventProxy) then
              eventProxy:Handle3(a, b, c)
            end
          end
        end, function (default)
          local e = default
          DCET.Log.Error(e)
        end)
      end
    end
    ToString = function (this)
      local sb = System.StringBuilder()
      local noParent = HashSetType()
      local typeCount = DictTypeInt32()

      local noDomain = HashSetType()

      for _, kv in System.each(this.allComponents) do
        local type = kv.Value:GetType()
        if kv.Value:getParent() == nil then
          noParent:Add(type)
        end

        if kv.Value:getDomain() == nil then
          noDomain:Add(type)
        end

        if typeCount:ContainsKey(type) then
          local default = typeCount
          default:set(default:get() + 1)
        else
          typeCount:set(type, 1)
        end
      end

      sb:AppendLine("not set parent type: ")
      for _, type in System.each(noParent) do
        sb:AppendLine("\t" .. type:getName())
      end

      sb:AppendLine("not set domain type: ")
      for _, type in System.each(noDomain) do
        sb:AppendLine("\t" .. type:getName())
      end

      local orderByDescending = Linq.OrderByDescending(typeCount, function (s)
        return s.Value
      end, nil, System.Int32)

      sb:AppendLine("Entity Count: ")
      for _, kv in System.each(orderByDescending) do
        local continue
        repeat
          if kv.Value == 1 then
            continue = true
            break
          end
          sb:AppendLine("\t" .. kv.Key:getName() .. ": " .. kv.Value)
          continue = true
        until 1
        if not continue then
          break
        end
      end

      return sb:ToString()
    end
    return {
      GetAllType = GetAllType,
      AddType = AddType,
      Init = Init,
      RegisterEvent = RegisterEvent,
      GetTypes = GetTypes,
      RegisterSystem = RegisterSystem,
      Remove = Remove,
      Get = Get,
      IsRegister = IsRegister,
      Deserialize = Deserialize,
      Awake = Awake,
      Awake1 = Awake1,
      Awake2 = Awake2,
      Awake3 = Awake3,
      Awake4 = Awake4,
      Change = Change,
      Load = Load,
      Destroy = Destroy,
      Update = Update,
      LateUpdate = LateUpdate,
      Run = Run,
      Run1 = Run1,
      Run2 = Run2,
      Run3 = Run3,
      ToString = ToString,
      __ctor__ = __ctor__
    }
  end)
end)
