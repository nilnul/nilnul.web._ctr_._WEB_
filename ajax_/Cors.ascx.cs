using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.ajax_
{
	public partial class Cors : nilnul._web_._CTR_.RefJsByType
	{
		public Cors()
		{
			referencedJs = typeof(_cors.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}