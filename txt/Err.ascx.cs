using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.txt
{
	public partial class Err : nilnul._web_._CTR_.RefJsByType
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		public string type
		{
			get { return this.Txt4.type; }
			set
			{
				this.Txt4.type = value;
			}
		}

		public string name
		{
			get { return this.Txt4.name; }
			set
			{
				this.Txt4.name = value; //cache will make Txt4 null
			}
		}



	}
}