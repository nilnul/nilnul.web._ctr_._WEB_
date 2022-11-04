using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web.ctrl
{
	public partial class PasswordRegex : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public string passwordId
		{
			get
			{
				return Password1.ClientID;
			}
		}

		public string clientId
		{
			get
			{
				return ClientID;
			}
		}

	}
}