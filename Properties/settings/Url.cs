using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using nilnul.web.Properties.settings._url;

namespace nilnul.web._ctr_._WEB_.Properties.settings
{
	public class Url : nilnul.web.Properties.settings._url.origin.WebApp
	{
		public Url() : base(Settings.Default.denote)
		{
		}

		public Url(Origin.App url) : base(url, Settings.Default.denote)
		{
		}

		public Url(string scheme, string authority) : base(scheme, authority, Settings.Default.denote)
		{
		}

		static public Url Singleton
		{
			get
			{
				return nilnul.obj_.Singleton<Url>.Instance;
			}
		}

	}
}