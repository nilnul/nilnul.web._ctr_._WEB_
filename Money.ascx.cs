using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Money : nilnul._web_._CTR_.RefJsByType
	{
		public Money():base( typeof( _money.Js))
		{
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		

		private string _type = "number";
		public string type { get { return _type; } set { _type = value; } }


	}
}