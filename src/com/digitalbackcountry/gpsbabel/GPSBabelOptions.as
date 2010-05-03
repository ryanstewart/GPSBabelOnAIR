package com.digitalbackcountry.gpsbabel
{
	import flash.filesystem.File;

	public class GPSBabelOptions
	{

		private var _preferences_file:File = null;
		private var _synthesize_shortnames:Boolean = false;
		private var _process_route_info:Boolean = false;
		private var _process_track_info:Boolean = false;
		private var _process_realtime_tracking_info:Boolean = false;
		private var _process_waypoint_info:Boolean = false;
		private var _process_command_file:Boolean = false;
		private var _character_set:String = "";
		private var _no_smart_icons_on_output:Boolean = false;
		private var _invoke_filter:String = "";
		private var _debug_level:int = 0;
		
		
		public function GPSBabelOptions(preferences_file:File=null, synthesize_shortnames:Boolean=false, process_route_info:Boolean=false, process_track_info:Boolean=false, process_realtime_tracking_info:Boolean=false, process_waypoint_info:Boolean=false, process_command_file:Boolean=false, character_set:String=null, no_smart_icons_on_output:Boolean=false, invoke_filter:String=null, debug_level:int=0)
		{
			this._preferences_file = preferences_file;  
			this._synthesize_shortnames = synthesize_shortnames;  
			this._process_route_info = process_route_info;  
			this._process_track_info = process_track_info;  
			this._process_realtime_tracking_info = process_realtime_tracking_info;  
			this._process_waypoint_info = process_waypoint_info;  
			this._process_command_file = process_command_file;  
			this._character_set = character_set;  
			this._no_smart_icons_on_output = no_smart_icons_on_output;  
			this._invoke_filter = invoke_filter;  
			this._debug_level = debug_level;  
		}


		public function get preferences_file():File
		{
			return _preferences_file;
		}

		public function set preferences_file(value:File):void
		{
			_preferences_file = value;
		}

		public function get synthesize_shortnames():Boolean
		{
			return _synthesize_shortnames;
		}

		public function set synthesize_shortnames(value:Boolean):void
		{
			_synthesize_shortnames = value;
		}

		public function get process_route_info():Boolean
		{
			return _process_route_info;
		}

		public function set process_route_info(value:Boolean):void
		{
			_process_route_info = value;
		}

		public function get process_track_info():Boolean
		{
			return _process_track_info;
		}

		public function set process_track_info(value:Boolean):void
		{
			_process_track_info = value;
		}

		public function get process_realtime_tracking_info():Boolean
		{
			return _process_realtime_tracking_info;
		}

		public function set process_realtime_tracking_info(value:Boolean):void
		{
			_process_realtime_tracking_info = value;
		}

		public function get process_waypoint_info():Boolean
		{
			return _process_waypoint_info;
		}

		public function set process_waypoint_info(value:Boolean):void
		{
			_process_waypoint_info = value;
		}

		public function get process_command_file():Boolean
		{
			return _process_command_file;
		}

		public function set process_command_file(value:Boolean):void
		{
			_process_command_file = value;
		}

		
		/** 
		 * If you want to change the character set of input or/and output side you 
		 * can do this with the option -c <character set>. You can get a complete 
		 * list of supported character sets with "gpsbabel -l". To change the character 
		 * set on both sides you should do this:
		 */
		public function get character_set():String
		{
			return _character_set;
		}

		public function set character_set(value:String):void
		{
			_character_set = value;
		}

		public function get no_smart_icons_on_output():Boolean
		{
			return _no_smart_icons_on_output;
		}

		public function set no_smart_icons_on_output(value:Boolean):void
		{
			_no_smart_icons_on_output = value;
		}

		public function get invoke_filter():String
		{
			return _invoke_filter;
		}

		public function set invoke_filter(value:String):void
		{
			_invoke_filter = value;
		}

		public function get debug_level():int
		{
			return _debug_level;
		}

		public function set debug_level(value:int):void
		{
			_debug_level = value;
		}

	}
	
	
//	-p               Preferences file (gpsbabel.ini)
//		-s               Synthesize shortnames
//		-r               Process route information
//		-t               Process track information
//		-T               Process realtime tracking information
//		-w               Process waypoint information [default]
//		-b               Process command file (batch mode)
//	-c               Character set for next operation
//	-N               No smart icons on output
//	-x filtername    Invoke filter (placed between inputs and output) 
//	-D level         Set debug level [0]
//	-l               Print GPSBabel builtin character sets and exit
//	-h, -?           Print detailed help and exit
//	-V               Print GPSBabel version and exit
	
}