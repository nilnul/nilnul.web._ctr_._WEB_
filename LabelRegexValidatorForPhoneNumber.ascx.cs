using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_
{
	public partial class LabelRegexValidatorForPhoneNumber : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			this.LabelRegexValidator1.regex = regex;

			this.LabelRegexValidator1.invalidMsg = "Invalid Phone Number Format.";

		}

		public string regex {
			get {
				return @"
					^\s*
					(
						(?:
							(?:
								\+{0,2}
								|
								0{0,2}
							)
							[1-9]\d{0,3}
							(
								\s*-\s*
								|
								\s+
							)
							|
							0
						)?
						(
							[1-9]\d{0,3}		
							(	\s*-\s*		|	\s+		)
							[1-9]\d{5,8}
							(	\s*[-*]\s*[1-9]\d{0,7}	)?
							|
							1[3-9]\d{9}
						)
					)?
					\s*$
				".Replace(" ","").Replace("\t","").Replace("\n","").Replace("\r","").Replace(@"\",@"\\");
			}
		}
	}
}