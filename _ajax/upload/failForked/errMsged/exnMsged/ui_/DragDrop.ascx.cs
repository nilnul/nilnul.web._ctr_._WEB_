using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.fs._web.upload_
{
	public partial class DragDrop : nilnul.web._ctr.RefJsByType
	{
		public DragDrop()
		{
			this.referencedJs = typeof(_dragDrop.Js);

		}
		protected void Page_Load(object sender, EventArgs e)
		{
		}
	}
}