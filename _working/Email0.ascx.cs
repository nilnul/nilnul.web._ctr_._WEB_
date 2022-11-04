using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web.ctrl._web
{
	public partial class Email0 : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

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