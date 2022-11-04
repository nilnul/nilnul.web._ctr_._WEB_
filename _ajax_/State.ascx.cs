using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_._ajax_
{
	public partial class State : nilnul._web_._CTR_.RefJsByType
	{
		public State()
		{
			referencedJs = typeof(_state.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		

		public string	handler
		{
			get
			{
				return (string)(ViewState[nameof(handler)] ?? "");
			}
			set
			{
				ViewState[nameof(handler)] = value;
			}
		}
	}
}