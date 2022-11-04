using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace nilnul.web._ctr_._WEB_
{
	public class Global : nilnul.web.http.svr.App //.svr.App
	{

		protected void Application_Start(object sender, EventArgs e)
		{

		}

		//protected void Session_Start(object sender, EventArgs e)
		//{

		//}

		//protected void Application_BeginRequest(object sender, EventArgs e)
		//{
		//	Application[nilnul._web_._CTR_.LangModule.USER_PREFER_CHINESE_KEY] = nilnul._web_._CTR_.Globalization.UserPreferChinese2((sender as HttpApplication).Context.Request);



		//}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{

		}

		protected void Session_End(object sender, EventArgs e)
		{

		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
//		public override string GetVaryByCustomString(HttpContext context,
//string arg)
//		{
//			if (arg == null)
//			{
//				return base.GetVaryByCustomString(context, arg);

//			}
//			if (arg.ToLower() == "l")
//			{

//				return nilnul.web.svr.module_.ling_.enCn_.BySessionX.UserPreferChinese(context).ToString();// context.Request.Cookies["l"] == null ? "" : context.Request.Cookies["l"].Value;
//			}
//			return base.GetVaryByCustomString(context, arg);
//		}
	}
}