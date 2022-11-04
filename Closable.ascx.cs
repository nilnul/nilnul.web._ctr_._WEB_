using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Closable : nilnul._web_._CTR_.RefJsByType
	{
		public Closable()
		{
			referencedJs = typeof(_closable.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		static public string GetEnCn(string en, string cn)
		{
			return nilnul._web_._CTR_.lang.PerRequest.GetEnZh(en, cn);
		}

	}
}