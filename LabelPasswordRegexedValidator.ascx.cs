using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelPasswordRegexedValidator : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			_setDefaultRegex();


		}

		private void _setDefaultRegex() {
			_invalidMsg = "At least 6 chars long";
			PasswordRegexed1.regex = "^.{6,}$";
		}

		private string _invalidMsg="At least 6 chars long.";

		public string invalidMsg
		{
			get { return _invalidMsg; }
			set { _invalidMsg = value; }
		}



		public string regex
		{
			get { return this.PasswordRegexed1.regex; }
			set { this.PasswordRegexed1.regex = value; }
		}


		public string validatorClientId
		{
			get
			{
				return this.Validator1.ClientID;

			}
		}

		public string textClientId
		{
			get
			{
				return this.PasswordRegexed1.clientId;

			}
		}

		public string keyId
		{
			get
			{
				return this.ClientID;

			}
		}



		public string tip
		{
			get
			{
				return label.InnerHtml;
			}
			set
			{
				label.InnerHtml = value;
			}
		}
	}
}