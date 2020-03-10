﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DCETRuntime_GameLoopWrap
{
	public static void Register(LuaState L)
	{
		L.BeginStaticLibs("GameLoop");
		L.RegVar("onStart", get_onStart, set_onStart);
		L.RegVar("onEnable", get_onEnable, set_onEnable);
		L.RegVar("onDisable", get_onDisable, set_onDisable);
		L.RegVar("onUpdate", get_onUpdate, set_onUpdate);
		L.RegVar("onFixedUpdate", get_onFixedUpdate, set_onFixedUpdate);
		L.RegVar("onLateUpdate", get_onLateUpdate, set_onLateUpdate);
		L.RegVar("onDestroy", get_onDestroy, set_onDestroy);
		L.RegVar("onApplicationFocus", get_onApplicationFocus, set_onApplicationFocus);
		L.RegVar("onApplicationPause", get_onApplicationPause, set_onApplicationPause);
		L.RegVar("onApplicationQuit", get_onApplicationQuit, set_onApplicationQuit);
		L.EndStaticLibs();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onStart(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onStart);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onEnable(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onEnable);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onDisable(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onDisable);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onUpdate(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onUpdate);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onFixedUpdate(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onFixedUpdate);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onLateUpdate(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onLateUpdate);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onDestroy(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onDestroy);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onApplicationFocus(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onApplicationFocus);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onApplicationPause(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onApplicationPause);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onApplicationQuit(IntPtr L)
	{
		try
		{
			ToLua.Push(L, DCETRuntime.GameLoop.onApplicationQuit);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onStart(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onStart = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onEnable(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onEnable = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onDisable(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onDisable = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onUpdate(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onUpdate = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onFixedUpdate(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onFixedUpdate = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onLateUpdate(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onLateUpdate = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onDestroy(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onDestroy = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onApplicationFocus(IntPtr L)
	{
		try
		{
			System.Action<bool> arg0 = (System.Action<bool>)ToLua.CheckDelegate<System.Action<bool>>(L, 2);
			DCETRuntime.GameLoop.onApplicationFocus = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onApplicationPause(IntPtr L)
	{
		try
		{
			System.Action<bool> arg0 = (System.Action<bool>)ToLua.CheckDelegate<System.Action<bool>>(L, 2);
			DCETRuntime.GameLoop.onApplicationPause = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onApplicationQuit(IntPtr L)
	{
		try
		{
			System.Action arg0 = (System.Action)ToLua.CheckDelegate<System.Action>(L, 2);
			DCETRuntime.GameLoop.onApplicationQuit = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}
