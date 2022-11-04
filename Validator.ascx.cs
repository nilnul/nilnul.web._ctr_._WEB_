using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Validator : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//this.Label1.ID = this.ID;
			//this.Label1.ClientIDMode = ClientIDMode.Static;

			///get the language
			///


		}

		public string labelClientId
		{
			get
			{
				return this.Label1.ClientID;

			}

		}


		public string clientId
		{
			get
			{
				return this.Label1.ClientID;

			}

		}
		public string keyId
		{
			get
			{
				return this.Label1.ClientID;

			}

		}

	}
}