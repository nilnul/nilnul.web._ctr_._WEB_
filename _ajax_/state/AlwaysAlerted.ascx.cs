using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_._ajax_.state
{
	public partial class AlwaysAlerted : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	

		public string unique_func_name
		{
			get
			{
				return _alwaysAlerted.Script.Unique_func_name;
			}
		}

	}
}