using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.ajax.cors
{
    public partial class FailMsged1 : nilnul._web_._CTR_.RefJsByType
    {
		public FailMsged1()
		{
			this.referencedJs = typeof(_failMsged.Js);
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