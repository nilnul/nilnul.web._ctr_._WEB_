using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	[Obsolete("_scriptLoad")]

	public partial class LabelEmailValidator : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		private string _invalidMsg="Email Address Format is Invalid.";

		public string invalidMsg
		{
			get { return _invalidMsg; }
			set { _invalidMsg = value; }
		}


		


		public string validatorClientId
		{
			get
			{
				return this.Validator.clientId;

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