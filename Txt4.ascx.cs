using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	[DefaultProperty("type")]
	public partial class Txt4 : nilnul._web_._CTR_.RefJsByType
	{
		public Txt4():base( typeof( _txt.Js4Txt4))
		{
			//this.referencedJs = typeof( _txt.Js4Txt4);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		

		private string _type = "text";
		public string type { get { return _type; } set { _type = value; } }


		[Bindable(true)]
		[Category("Appearance")]
		[DefaultValue("")]
		[Localizable(true)]
		public string name
		{
			get
			{
				String s = (String)ViewState[nameof(name)];
				return ((s == null) ? String.Empty : s);
			}

			set
			{
				ViewState[nameof(name)] = value;
			}
		}


	}
}