﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.radio_._horizon
{
	public partial class Css : System.Web.UI.UserControl
	{
		public int radius = 15;
		public string radiusPercent;

		public Css()
		{
			radiusPercent = radius + "%";
		}

		public string lineThick = "2px";
		public string selectedBackColor = "#ffffbb";

		public string outlineColor = "blue";

		public const string ClassPanel = "nilnul-radio_-horizon-panel";

		public const string ClassSelected = "nilnul-radio_-horizon-btn-selected";
		public const string ClassUnselected = "nilnul-radio_-horizon-btn-unselected";

		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}