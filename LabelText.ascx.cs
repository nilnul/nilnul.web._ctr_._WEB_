using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelText : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public Label label
		{
			get
			{
				return this.Label1;
			}
		}

		public string textClientId
		{
			get
			{
				return this.Text1.clientId;
			}
		}



		public string tip
		{
			get
			{
				return label.Text;
			}
			set
			{
				label.Text = value;
			}
		}
	}
}