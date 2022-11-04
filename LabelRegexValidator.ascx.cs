using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelRegexValidator : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Page_Init(object sender, EventArgs e)
		{
			//invalidMsg = "ctrl load";

			if (String.IsNullOrWhiteSpace(Request["regex"]))
			{
				return;
			}
			else
			{
				this.regex = HttpUtility.UrlDecode(Request["regex"]);

				//this.regex = (Request["regex"]);
				//	this.regex = Request.RawUrl;

				//invalidMsg = "Invalid according to " + this.regex;
			}
		}

		public virtual string regex
		{
			get { return Regex1.regex; }
			set { Regex1.regex = value; }
		}

		private string _invalidMsg = "Invalid.";
		public virtual string invalidMsg
		{
			get { return _invalidMsg; }
			set { _invalidMsg = value; }
		}






		public string validatorClientId
		{
			get
			{
				return this.Validator.ClientID;

			}
		}

		public string textClientId
		{
			get
			{
				return this.Regex1.clientId;

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