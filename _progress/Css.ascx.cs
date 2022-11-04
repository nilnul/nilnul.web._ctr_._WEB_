using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_._progress
{
	public partial class Css : System.Web.UI.UserControl
	{
		public int radius = 15;
		public string radiusPercent;

		public Css()
		{
			radiusPercent = radius + "%";
		}


		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}