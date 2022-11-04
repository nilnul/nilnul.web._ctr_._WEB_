using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.radio_

{
	public partial class Vertical : nilnul._web_._CTR_.RefJsByType
	{
		public Vertical()
		{
			referencedJs = typeof(_vertical.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		//public string classSelected = _inTable.Js.ClassSelected;
	}
}