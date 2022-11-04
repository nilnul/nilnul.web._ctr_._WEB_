using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelTextRegexedValidator : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		private string _invalidMsg;

		public string invalidMsg
		{
			get { return _invalidMsg; }
			set { _invalidMsg = value; }
		}


		private string _regex;

		public string regex
		{
			get { return Regex.regex; }
			set { Regex.regex = value; }
		}


		public string validatorClientId
		{
			get
			{
				return this.Validator.clientId;

			}
		}

		public string textClientId
		{
			get
			{
				return this.Regex.clientId;

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
				label.InnerHtml= value;
			}
		}
	}
}