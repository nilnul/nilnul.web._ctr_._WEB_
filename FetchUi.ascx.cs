﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class FetchUi : nilnul._web_._CTR_.RefJsByType
	{
		public FetchUi()
		{
			referencedJs = typeof( _fetchUi.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}