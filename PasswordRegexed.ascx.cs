using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class PasswordRegexed : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//init regex according to request query string.

		}


		/// <summary>
		/// this will enable set the regex in user ctrl in asp.net
		/// </summary>
		private string _regex="^.{6,}$";

		public string regex
		{
			get { return _regex; }
			set { _regex = value; }
		}



		public string passwordId
		{
			get
			{
				return Password1.ClientID;
			}
		}

		public string passwordKeyClientId
		{
			get
			{
				return Password1.keyId;
			}
		}


		public string clientId
		{
			get
			{
				return ClientID;
			}
		}
		public string keyId
		{
			get
			{
				return ClientID;
			}
		}

	}
}