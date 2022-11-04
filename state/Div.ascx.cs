using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.state
{
	public partial class Div : nilnul._web_._CTR_.RefJsByType
	{
		public Div()
		{
			this.referencedJs = typeof(_div.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}