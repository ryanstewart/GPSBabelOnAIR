package com.digitalbackcountry.gpsbabel.formats
{
	public class GPXOptions extends Options
	{
		public static const GPX_VERSION_10:String = "1.0";
		public static const GPX_VERSION_11:String = "1.1";
		
		private var _snlen:int = 0;
		private var _supresswhite:Boolean = false;
		private var _logpoint:Boolean = false;
		private var _urlbase:String = "";
		private var _gpxver:String = "1.0";
		private var _humminbirdextensions:Boolean = false;
		private var _garminextensions:Boolean = false;
		
		public function GPXOptions(snlen:int=0, supress_whitespace:Boolean=false, create_waypoints_from_geocache_logs:Boolean=false, urlbase:String=null, gpx_version:String=null, add_info_as_humminbird:Boolean=false, add_info_as_garmin:Boolean=false)
		{
			this._snlen = snlen;  
			this._supresswhite = supress_whitespace;  
			this._logpoint = create_waypoints_from_geocache_logs;  
			this._urlbase = urlbase;  
			this._gpxver = gpx_version;  
			this._humminbirdextensions = add_info_as_humminbird;  
			this._garminextensions = add_info_as_garmin;  
			super();
		}

		public override function formattedArguments():String
		{
			var result:String = "";
			
			if(this._snlen)
				result = result + ',snlen='+_snlen.toString();
			if(this._supresswhite)
				result = result + ',supresswhite=1';
			if(this._logpoint)
				result = result + ',logpoint=1';
			if(this._urlbase)
				result = result + ',urlbase=' + this._urlbase;
			if(this._gpxver)
				result = result + ',gpxver=' + this._gpxver;
			if(this._humminbirdextensions && this._gpxver == GPX_VERSION_11)
				result = result + ',humminbirdextensions=1';
			if(this._garminextensions && this._gpxver == GPX_VERSION_11)
				result = result + 'garminextensions=1';
			
			return result;
		}
		
		//gpsbabel -i gpx -f file.gpx -o kml,deficon="file://myicon.png",lines=0 -F one.kml -o kml -F two.kml

		public function get length_of_generated_shortnames():int
		{
			return _snlen;
		}

		public function set length_of_generated_shortnames(value:int):void
		{
			_snlen = value;
		}

		public function get supress_whitespace():Boolean
		{
			return _supresswhite;
		}

		public function set supress_whitespace(value:Boolean):void
		{
			_supresswhite = value;
		}

		public function get create_waypoints_from_geocache_logs():Boolean
		{
			return _logpoint;
		}

		public function set create_waypoints_from_geocache_logs(value:Boolean):void
		{
			_logpoint = value;
		}

		public function get base_url_for_link_tag():String
		{
			return _urlbase;
		}

		public function set base_url_for_link_tag(value:String):void
		{
			_urlbase = value;
		}

		public function get gpx_version():String
		{
			return _gpxver;
		}

		public function set gpx_version(value:String):void
		{
			_gpxver = value;
		}

		public function get add_info_as_humminbird():Boolean
		{
			return _humminbirdextensions;
		}

		public function set add_info_as_humminbird(value:Boolean):void
		{
			_humminbirdextensions = value;
		}

		public function get add_info_as_garmin():Boolean
		{
			return _garminextensions;
		}

		public function set add_info_as_garmin(value:Boolean):void
		{
			_garminextensions = value;
		}

	}
}