﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_WWWWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UnityEngine.WWW), typeof(System.Object));
		L.RegFunction("EscapeURL", EscapeURL);
		L.RegFunction("UnEscapeURL", UnEscapeURL);
		L.RegFunction("LoadFromCacheOrDownload", LoadFromCacheOrDownload);
		L.RegFunction("LoadImageIntoTexture", LoadImageIntoTexture);
		L.RegFunction("Dispose", Dispose);
		L.RegFunction("GetAudioClip", GetAudioClip);
		L.RegFunction("GetAudioClipCompressed", GetAudioClipCompressed);
		L.RegFunction("New", _CreateUnityEngine_WWW);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("assetBundle", get_assetBundle, null);
		L.RegFunction("getassetBundle", get_assetBundle);
		L.RegVar("bytes", get_bytes, null);
		L.RegFunction("getbytes", get_bytes);
		L.RegVar("bytesDownloaded", get_bytesDownloaded, null);
		L.RegFunction("getbytesDownloaded", get_bytesDownloaded);
		L.RegVar("error", get_error, null);
		L.RegFunction("geterror", get_error);
		L.RegVar("isDone", get_isDone, null);
		L.RegFunction("getisDone", get_isDone);
		L.RegVar("progress", get_progress, null);
		L.RegFunction("getprogress", get_progress);
		L.RegVar("responseHeaders", get_responseHeaders, null);
		L.RegFunction("getresponseHeaders", get_responseHeaders);
		L.RegVar("text", get_text, null);
		L.RegFunction("gettext", get_text);
		L.RegVar("texture", get_texture, null);
		L.RegFunction("gettexture", get_texture);
		L.RegVar("textureNonReadable", get_textureNonReadable, null);
		L.RegFunction("gettextureNonReadable", get_textureNonReadable);
		L.RegVar("threadPriority", get_threadPriority, set_threadPriority);
		L.RegFunction("getthreadPriority", get_threadPriority);
		L.RegFunction("setthreadPriority", set_threadPriority);
		L.RegVar("uploadProgress", get_uploadProgress, null);
		L.RegFunction("getuploadProgress", get_uploadProgress);
		L.RegVar("url", get_url, null);
		L.RegFunction("geturl", get_url);
		L.RegVar("keepWaiting", get_keepWaiting, null);
		L.RegFunction("getkeepWaiting", get_keepWaiting);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateUnityEngine_WWW(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.WWW obj = new UnityEngine.WWW(arg0);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<UnityEngine.WWWForm>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.WWWForm arg1 = (UnityEngine.WWWForm)ToLua.ToObject(L, 2);
				UnityEngine.WWW obj = new UnityEngine.WWW(arg0, arg1);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<byte[]>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
				UnityEngine.WWW obj = new UnityEngine.WWW(arg0, arg1);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 3)
			{
				string arg0 = ToLua.CheckString(L, 1);
				byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
				System.Collections.Generic.Dictionary<string,string> arg2 = (System.Collections.Generic.Dictionary<string,string>)ToLua.CheckObject(L, 3, typeof(System.Collections.Generic.Dictionary<string,string>));
				UnityEngine.WWW obj = new UnityEngine.WWW(arg0, arg1, arg2);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: UnityEngine.WWW.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int EscapeURL(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				string arg0 = ToLua.CheckString(L, 1);
				string o = UnityEngine.WWW.EscapeURL(arg0);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else if (count == 2)
			{
				string arg0 = ToLua.CheckString(L, 1);
				System.Text.Encoding arg1 = (System.Text.Encoding)ToLua.CheckObject<System.Text.Encoding>(L, 2);
				string o = UnityEngine.WWW.EscapeURL(arg0, arg1);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.WWW.EscapeURL");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int UnEscapeURL(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				string arg0 = ToLua.CheckString(L, 1);
				string o = UnityEngine.WWW.UnEscapeURL(arg0);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else if (count == 2)
			{
				string arg0 = ToLua.CheckString(L, 1);
				System.Text.Encoding arg1 = (System.Text.Encoding)ToLua.CheckObject<System.Text.Encoding>(L, 2);
				string o = UnityEngine.WWW.UnEscapeURL(arg0, arg1);
				LuaDLL.lua_pushstring(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.WWW.UnEscapeURL");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LoadFromCacheOrDownload(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes<int>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				int arg1 = (int)LuaDLL.lua_tonumber(L, 2);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<UnityEngine.Hash128>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.Hash128 arg1 = StackTraits<UnityEngine.Hash128>.To(L, 2);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<UnityEngine.CachedAssetBundle>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.CachedAssetBundle arg1 = StackTraits<UnityEngine.CachedAssetBundle>.To(L, 2);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes<int, uint>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				int arg1 = (int)LuaDLL.lua_tonumber(L, 2);
				uint arg2 = (uint)LuaDLL.lua_tonumber(L, 3);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1, arg2);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes<UnityEngine.Hash128, uint>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.Hash128 arg1 = StackTraits<UnityEngine.Hash128>.To(L, 2);
				uint arg2 = (uint)LuaDLL.lua_tonumber(L, 3);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1, arg2);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes<UnityEngine.CachedAssetBundle, uint>(L, 2))
			{
				string arg0 = ToLua.CheckString(L, 1);
				UnityEngine.CachedAssetBundle arg1 = StackTraits<UnityEngine.CachedAssetBundle>.To(L, 2);
				uint arg2 = (uint)LuaDLL.lua_tonumber(L, 3);
				UnityEngine.WWW o = UnityEngine.WWW.LoadFromCacheOrDownload(arg0, arg1, arg2);
				ToLua.PushObject(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.WWW.LoadFromCacheOrDownload");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LoadImageIntoTexture(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
			UnityEngine.Texture2D arg0 = (UnityEngine.Texture2D)ToLua.CheckObject(L, 2, typeof(UnityEngine.Texture2D));
			obj.LoadImageIntoTexture(arg0);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Dispose(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
			obj.Dispose();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetAudioClip(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				UnityEngine.AudioClip o = obj.GetAudioClip();
				ToLua.PushSealed(L, o);
				return 1;
			}
			else if (count == 2)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
				UnityEngine.AudioClip o = obj.GetAudioClip(arg0);
				ToLua.PushSealed(L, o);
				return 1;
			}
			else if (count == 3)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
				bool arg1 = LuaDLL.luaL_checkboolean(L, 3);
				UnityEngine.AudioClip o = obj.GetAudioClip(arg0, arg1);
				ToLua.PushSealed(L, o);
				return 1;
			}
			else if (count == 4)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
				bool arg1 = LuaDLL.luaL_checkboolean(L, 3);
				UnityEngine.AudioType arg2 = (UnityEngine.AudioType)LuaDLL.luaL_checknumber(L, 4);
				UnityEngine.AudioClip o = obj.GetAudioClip(arg0, arg1, arg2);
				ToLua.PushSealed(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.WWW.GetAudioClip");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetAudioClipCompressed(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				UnityEngine.AudioClip o = obj.GetAudioClipCompressed();
				ToLua.PushSealed(L, o);
				return 1;
			}
			else if (count == 2)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
				UnityEngine.AudioClip o = obj.GetAudioClipCompressed(arg0);
				ToLua.PushSealed(L, o);
				return 1;
			}
			else if (count == 3)
			{
				UnityEngine.WWW obj = (UnityEngine.WWW)ToLua.CheckObject<UnityEngine.WWW>(L, 1);
				bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
				UnityEngine.AudioType arg1 = (UnityEngine.AudioType)LuaDLL.luaL_checknumber(L, 3);
				UnityEngine.AudioClip o = obj.GetAudioClipCompressed(arg0, arg1);
				ToLua.PushSealed(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.WWW.GetAudioClipCompressed");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_assetBundle(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			UnityEngine.AssetBundle ret = obj.assetBundle;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index assetBundle on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_bytes(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			byte[] ret = obj.bytes;
			LuaDLL.tolua_pushlstring(L, ret, ret.Length);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index bytes on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_bytesDownloaded(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			int ret = obj.bytesDownloaded;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index bytesDownloaded on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_error(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			string ret = obj.error;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index error on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_isDone(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			bool ret = obj.isDone;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index isDone on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_progress(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			float ret = obj.progress;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index progress on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_responseHeaders(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			System.Collections.Generic.Dictionary<string,string> ret = obj.responseHeaders;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index responseHeaders on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_text(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			string ret = obj.text;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index text on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_texture(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			UnityEngine.Texture2D ret = obj.texture;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index texture on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_textureNonReadable(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			UnityEngine.Texture2D ret = obj.textureNonReadable;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index textureNonReadable on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_threadPriority(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			UnityEngine.ThreadPriority ret = obj.threadPriority;
			LuaDLL.lua_pushinteger(L, (int)ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index threadPriority on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_uploadProgress(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			float ret = obj.uploadProgress;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index uploadProgress on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_url(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			string ret = obj.url;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index url on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_keepWaiting(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			bool ret = obj.keepWaiting;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index keepWaiting on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_threadPriority(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.WWW obj = (UnityEngine.WWW)o;
			UnityEngine.ThreadPriority arg0 = (UnityEngine.ThreadPriority)LuaDLL.luaL_checknumber(L, 2);
			obj.threadPriority = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index threadPriority on a nil value");
		}
	}
}

