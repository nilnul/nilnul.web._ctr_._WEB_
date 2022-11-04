using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.ajax
{
    public partial class FailMsged : nilnul._web_._CTR_.RefJsByType
    {
		public FailMsged()
		{
			this.referencedJs = typeof(_failMsged.Js1);
		}
        protected void Page_Load(object sender, EventArgs e)
        {

        }
   

        //public string unique_func_name
        //{
        //    get
        //    {
        //        return _failHandled.Script.Unique_func_name;
        //    }
        //}

    }
}