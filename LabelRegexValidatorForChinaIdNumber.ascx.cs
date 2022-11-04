using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelRegexValidatorForChinaIdNumber :LabelRegexValidator
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			this.LabelRegexValidator1.regex = regex;
					
		}



		public string regex {
			get {
				return @"
					^\s*
					(
						\d{17}(\d|x|X)
					)?
					\s*$
				".Replace(" ","").Replace("\t","").Replace("\n","").Replace("\r","").Replace(@"\",@"\\");
			}
		}
	}
}