using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_._ajax.upload
{
	/// <summary>
	/// err: due to network(disconnectedness, timeout), the request is not thru.
	/// exception: server processed and return an error via the http status code.
	/// fail: err or exception.
	/// done: not fail.
	/// </summary>
	/// <remarks>
	/// Note : err and exc both begin with "e". and err orders before exc
	/// done and fail are both 4 chars long.
	/// </remarks>
	public partial class FailForked: nilnul._web_._CTR_.RefJsByType
	{
		public FailForked()
		{
			referencedJs = typeof(_failForked.Js);
		}
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		

		
	}
}