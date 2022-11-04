using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.fs._web.upload_._dragDrop
{
	public partial class Js : nilnul.web._ctr.RefedJs
	{
		public static string DropOver = "nilnul-drop-over";	//when sth is draged over
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		//static public string Controller =  nilnul.fs._web._cfg.Paths.ROUTED_DIV4NILNUL_FS__API+"api/up2fs__CustomStream";

		static public string Controller =  nilnul.fs._web._cfg.Paths.ROUTED_DIV4NILNUL_FS__API+"api/file__Awaiting";

	}
}