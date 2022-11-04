using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web.ctrl._web.uc
{
	public partial class TextByRegex : System.Web.UI.UserControl
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
			get { return _regex; }
			set { _regex = value; }
		}


		public string validatorClientId
		{
			get
			{
				return this.Validator1.clientId;

			}
		}

		public string textClientId
		{
			get
			{
				return this.Text1.clientId;

			}
		}

		public string clientId
		{
			get
			{
				return Panel1.ClientID;
			}
		}

		public string tip
		{
			get
			{
				return Label1.Text;
			}
			set
			{
				Label1.Text = value;
			}
		}
	}
}