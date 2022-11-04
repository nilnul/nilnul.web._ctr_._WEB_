using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class Decimal : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			///
			///Note: the ascx handler in web.config will assign the ID from Request["id"]
			///
			//regex = Request["regex"];

			

		}



		public string getClientId()
		{
			return this.Regex1.clientId;
		}
		public string clientId
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
				return this.Regex1.keyId;

			}
		}


		protected string HttpContextGetLocalResourceObjectAsString(string message)
		{
			string path = HttpContext.Current.Request.Path;
			return (HttpContext.GetLocalResourceObject(path, message) as string);
		}
		private string getValidatorInnerHtmlInvalidFormat()
		{
			return GetLocalResourceObject("validator.innerHtml.invalidFormat").ToString();
		}
		
	}
}