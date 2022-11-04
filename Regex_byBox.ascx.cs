using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Regex_byBox: System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			///
			///Note: the ascx handler in web.config will assign the ID from Request["id"]
			///
			//regex = Request["regex"];

		}

		

		/// <summary>
		/// this will enable set the regex in user ctrl in asp.net
		/// </summary>
		private string _regex;

		public string regex
		{
			get { return _regex; }
			set { _regex = value; }
		}


		

		public string textClientId
		{
			get
			{
				return this.Text1.ClientID;

			}
		}

		public string ctrlId {
			get {
				return this.ClientID;
			}
		}

		public string keyId
		{
			get
			{
				return this.ClientID;
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