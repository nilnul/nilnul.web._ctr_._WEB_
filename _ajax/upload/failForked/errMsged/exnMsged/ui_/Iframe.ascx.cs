using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.fs._web.upload_

{
	public partial class Iframe : nilnul.web._ctr.RefJsByType
	{
		public Iframe()
		{
			this.referencedJs = typeof(_iframe.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		static public string Controller = _iframe.Js.Controller;
	}
}