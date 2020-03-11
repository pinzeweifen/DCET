﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class Microsoft_IO_RecyclableMemoryStreamWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(Microsoft.IO.RecyclableMemoryStream), typeof(System.IO.MemoryStream));
		L.RegFunction("Close", Close);
		L.RegFunction("GetBuffer", GetBuffer);
		L.RegFunction("Read", Read);
		L.RegFunction("SafeRead", SafeRead);
		L.RegFunction("Write", Write);
		L.RegFunction("ToString", ToString);
		L.RegFunction("WriteByte", WriteByte);
		L.RegFunction("ReadByte", ReadByte);
		L.RegFunction("SafeReadByte", SafeReadByte);
		L.RegFunction("SetLength", SetLength);
		L.RegFunction("Seek", Seek);
		L.RegFunction("WriteTo", WriteTo);
		L.RegFunction("New", _CreateMicrosoft_IO_RecyclableMemoryStream);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Capacity", get_Capacity, set_Capacity);
		L.RegFunction("getCapacity", get_Capacity);
		L.RegFunction("setCapacity", set_Capacity);
		L.RegVar("Length", get_Length, null);
		L.RegFunction("getLength", get_Length);
		L.RegVar("Position", get_Position, set_Position);
		L.RegFunction("getPosition", get_Position);
		L.RegFunction("setPosition", set_Position);
		L.RegVar("CanRead", get_CanRead, null);
		L.RegFunction("getCanRead", get_CanRead);
		L.RegVar("CanSeek", get_CanSeek, null);
		L.RegFunction("getCanSeek", get_CanSeek);
		L.RegVar("CanTimeout", get_CanTimeout, null);
		L.RegFunction("getCanTimeout", get_CanTimeout);
		L.RegVar("CanWrite", get_CanWrite, null);
		L.RegFunction("getCanWrite", get_CanWrite);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateMicrosoft_IO_RecyclableMemoryStream(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				Microsoft.IO.RecyclableMemoryStreamManager arg0 = (Microsoft.IO.RecyclableMemoryStreamManager)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStreamManager));
				Microsoft.IO.RecyclableMemoryStream obj = new Microsoft.IO.RecyclableMemoryStream(arg0);
				ToLua.PushSealed(L, obj);
				return 1;
			}
			else if (count == 2)
			{
				Microsoft.IO.RecyclableMemoryStreamManager arg0 = (Microsoft.IO.RecyclableMemoryStreamManager)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStreamManager));
				string arg1 = ToLua.CheckString(L, 2);
				Microsoft.IO.RecyclableMemoryStream obj = new Microsoft.IO.RecyclableMemoryStream(arg0, arg1);
				ToLua.PushSealed(L, obj);
				return 1;
			}
			else if (count == 3)
			{
				Microsoft.IO.RecyclableMemoryStreamManager arg0 = (Microsoft.IO.RecyclableMemoryStreamManager)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStreamManager));
				string arg1 = ToLua.CheckString(L, 2);
				int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
				Microsoft.IO.RecyclableMemoryStream obj = new Microsoft.IO.RecyclableMemoryStream(arg0, arg1, arg2);
				ToLua.PushSealed(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: Microsoft.IO.RecyclableMemoryStream.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Close(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			obj.Close();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetBuffer(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			byte[] o = obj.GetBuffer();
			LuaDLL.tolua_pushlstring(L, o, o.Length);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Read(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 4);
			int o = obj.Read(arg0, arg1, arg2);
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SafeRead(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 5);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 4);
			int arg3 = (int)LuaDLL.luaL_checknumber(L, 5);
			int o = obj.SafeRead(arg0, arg1, arg2, ref arg3);
			LuaDLL.lua_pushinteger(L, o);
			LuaDLL.lua_pushinteger(L, arg3);
			return 2;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Write(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 4);
			obj.Write(arg0, arg1, arg2);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToString(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			string o = obj.ToString();
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int WriteByte(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			byte arg0 = (byte)LuaDLL.luaL_checknumber(L, 2);
			obj.WriteByte(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ReadByte(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			int o = obj.ReadByte();
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SafeReadByte(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int o = obj.SafeReadByte(ref arg0);
			LuaDLL.lua_pushinteger(L, o);
			LuaDLL.lua_pushinteger(L, arg0);
			return 2;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetLength(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			obj.SetLength(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Seek(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			System.IO.SeekOrigin arg1 = (System.IO.SeekOrigin)LuaDLL.luaL_checknumber(L, 3);
			long o = obj.Seek(arg0, arg1);
			LuaDLL.tolua_pushint64(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int WriteTo(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)ToLua.CheckObject(L, 1, typeof(Microsoft.IO.RecyclableMemoryStream));
			System.IO.Stream arg0 = (System.IO.Stream)ToLua.CheckObject<System.IO.Stream>(L, 2);
			obj.WriteTo(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Capacity(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			int ret = obj.Capacity;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index Capacity on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Length(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			long ret = obj.Length;
			LuaDLL.tolua_pushint64(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index Length on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Position(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			long ret = obj.Position;
			LuaDLL.tolua_pushint64(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index Position on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanRead(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			bool ret = obj.CanRead;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index CanRead on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanSeek(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			bool ret = obj.CanSeek;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index CanSeek on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanTimeout(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			bool ret = obj.CanTimeout;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index CanTimeout on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanWrite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			bool ret = obj.CanWrite;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index CanWrite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Capacity(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.Capacity = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index Capacity on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Position(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			Microsoft.IO.RecyclableMemoryStream obj = (Microsoft.IO.RecyclableMemoryStream)o;
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			obj.Position = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index Position on a nil value");
		}
	}
}

