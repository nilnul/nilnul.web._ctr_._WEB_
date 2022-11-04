using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.frm.comm_
{
	public partial class AjaxDyna : nilnul._web_._CTR_.RefJsByType
	{
		public AjaxDyna():base(typeof(_ajaxDyna.Js))
		{

		}
		protected void Page_Load(object sender, EventArgs e)
		{
		}
	}
}