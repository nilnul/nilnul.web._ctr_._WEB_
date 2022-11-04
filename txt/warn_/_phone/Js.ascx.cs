using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.web._ctr_._WEB_.txt.warn_._phone
{
	public partial class Js : nilnul._web_._CTR_.script_.onLoad_._dollar._refer.Ee
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public string regex
		{
			get
			{
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
				".Replace(" ", "").Replace("\t", "").Replace("\n", "").Replace("\r", "").Replace(@"\", @"\\");
			}
		}
	}
}