using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	[Obsolete("see Txt")]
	public partial class Text : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public string textId
		{
			get
			{
				return text.ClientID;
			}
		}
		public string keyId
		{
			get
			{
				return text.ClientID;
			}
		}

		public string clientId
		{
			get
			{
				return text.ClientID;
			}
		}






		
	}
}