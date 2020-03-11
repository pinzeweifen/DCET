﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DCETRuntime_MongoHelperWrap
{
	public static void Register(LuaState L)
	{
		L.BeginStaticLibs("MongoHelper");
		L.RegFunction("LookupTypes", LookupTypes);
		L.RegFunction("ToJson", ToJson);
		L.RegFunction("FromJson", FromJson);
		L.RegFunction("ToBson", ToBson);
		L.RegFunction("FromBson", FromBson);
		L.RegFunction("FromStream", FromStream);
		L.RegFunction("AvoidAOT", AvoidAOT);
		L.EndStaticLibs();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LookupTypes(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.Collections.Generic.IEnumerable<System.Type> arg0 = (System.Collections.Generic.IEnumerable<System.Type>)ToLua.CheckObject<System.Collections.Generic.IEnumerable<System.Type>>(L, 1);
			DCETRuntime.MongoHelper.LookupTypes(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToJson(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				string o = DCETRuntime.MongoHelper.ToJson(arg0);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else if (count == 2)
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				MongoDB.Bson.IO.JsonWriterSettings arg1 = (MongoDB.Bson.IO.JsonWriterSettings)ToLua.CheckObject<MongoDB.Bson.IO.JsonWriterSettings>(L, 2);
				string o = DCETRuntime.MongoHelper.ToJson(arg0, arg1);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: DCETRuntime.MongoHelper.ToJson");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FromJson(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.Type arg0 = ToLua.CheckMonoType(L, 1);
			string arg1 = ToLua.CheckString(L, 2);
			object o = DCETRuntime.MongoHelper.FromJson(arg0, arg1);
			ToLua.Push(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToBson(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				byte[] o = DCETRuntime.MongoHelper.ToBson(arg0);
				LuaDLL.tolua_pushlstring(L, o, o.Length);
				return 1;
			}
			else if (count == 2)
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				System.IO.MemoryStream arg1 = (System.IO.MemoryStream)ToLua.CheckObject<System.IO.MemoryStream>(L, 2);
				DCETRuntime.MongoHelper.ToBson(arg0, arg1);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: DCETRuntime.MongoHelper.ToBson");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FromBson(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes<System.Type, byte[]>(L, 1))
			{
				System.Type arg0 = (System.Type)ToLua.ToObject(L, 1);
				byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
				object o = DCETRuntime.MongoHelper.FromBson(arg0, arg1);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<object, System.IO.Stream>(L, 1))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				System.IO.Stream arg1 = (System.IO.Stream)ToLua.ToObject(L, 2);
				object o = DCETRuntime.MongoHelper.FromBson(arg0, arg1);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes<System.Type, byte[], int, int>(L, 1))
			{
				System.Type arg0 = (System.Type)ToLua.ToObject(L, 1);
				byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
				int arg2 = (int)LuaDLL.lua_tonumber(L, 3);
				int arg3 = (int)LuaDLL.lua_tonumber(L, 4);
				object o = DCETRuntime.MongoHelper.FromBson(arg0, arg1, arg2, arg3);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes<object, byte[], int, int>(L, 1))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
				int arg2 = (int)LuaDLL.lua_tonumber(L, 3);
				int arg3 = (int)LuaDLL.lua_tonumber(L, 4);
				object o = DCETRuntime.MongoHelper.FromBson(arg0, arg1, arg2, arg3);
				ToLua.Push(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: DCETRuntime.MongoHelper.FromBson");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FromStream(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.Type arg0 = ToLua.CheckMonoType(L, 1);
			System.IO.Stream arg1 = (System.IO.Stream)ToLua.CheckObject<System.IO.Stream>(L, 2);
			object o = DCETRuntime.MongoHelper.FromStream(arg0, arg1);
			ToLua.Push(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int AvoidAOT(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			DCETRuntime.MongoHelper.AvoidAOT();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

