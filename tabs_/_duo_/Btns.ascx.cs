using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.tabs_._duo_

{
	public partial class Btns : nilnul._web_._CTR_.RefJsByType
	{
		public Btns()
		{
			referencedJs = typeof(_btns.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		public string classSelected = _btns.Js.ClassSelected;
	}
}