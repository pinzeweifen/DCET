﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class FairyGUI_Utils_ZipReaderWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(FairyGUI.Utils.ZipReader), typeof(System.Object));
		L.RegFunction("GetNextEntry", GetNextEntry);
		L.RegFunction("GetEntryData", GetEntryData);
		L.RegFunction("New", _CreateFairyGUI_Utils_ZipReader);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("entryCount", get_entryCount, null);
		L.RegFunction("getentryCount", get_entryCount);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateFairyGUI_Utils_ZipReader(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				FairyGUI.Utils.ZipReader obj = new FairyGUI.Utils.ZipReader(arg0);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: FairyGUI.Utils.ZipReader.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetNextEntry(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			FairyGUI.Utils.ZipReader obj = (FairyGUI.Utils.ZipReader)ToLua.CheckObject<FairyGUI.Utils.ZipReader>(L, 1);
			FairyGUI.Utils.ZipReader.ZipEntry arg0 = (FairyGUI.Utils.ZipReader.ZipEntry)ToLua.CheckObject<FairyGUI.Utils.ZipReader.ZipEntry>(L, 2);
			bool o = obj.GetNextEntry(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetEntryData(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			FairyGUI.Utils.ZipReader obj = (FairyGUI.Utils.ZipReader)ToLua.CheckObject<FairyGUI.Utils.ZipReader>(L, 1);
			FairyGUI.Utils.ZipReader.ZipEntry arg0 = (FairyGUI.Utils.ZipReader.ZipEntry)ToLua.CheckObject<FairyGUI.Utils.ZipReader.ZipEntry>(L, 2);
			byte[] o = obj.GetEntryData(arg0);
			LuaDLL.tolua_pushlstring(L, o, o.Length);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_entryCount(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			FairyGUI.Utils.ZipReader obj = (FairyGUI.Utils.ZipReader)o;
			int ret = obj.entryCount;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index entryCount on a nil value");
		}
	}
}

