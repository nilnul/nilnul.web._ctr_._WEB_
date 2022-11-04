using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Abort1 : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		public string unique_func_name
		{
			get
			{
				return _abort.Script.Unique_func_name;
			}
		}

	}
}