using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_._ajax_.state.abort.failHandled._errHandled
{
	public partial class Script : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		static string _Unique_func_name = System.Text.RegularExpressions.Regex.Replace(typeof(Script).FullName, @"\W", "_");

		public static string Unique_func_name
		{
			get
			{
				return _Unique_func_name;
			}
		}


	}
}