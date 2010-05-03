package com.digitalbackcountry.gpsbabel
{
	import com.digitalbackcountry.gpsbabel.formats.Options;

	public class Format
	{
		public static const GPX:String = "gpx";
		public static const KML:String = "kml";
		
		private var _options:Options;
		private var _text:String;
		private var _format:String;
		
		public function Format(format:String,options:Options=null)
		{
			this._format = format;
			if(options)
			{
				this._options = options;	
			} else {
				this._options = new Options();
			}
			
			super();
		}

		
		//public static const 
		
		
//		? Character Separated Values (xcsv)
//		Alan Map500 tracklogs (.trl) (alantrl)
//		Alan Map500 waypoints and routes (.wpr) (alanwpr)
//		All database fields on one tab-separated line (tabsep)
//		Brauniger IQ Series Barograph Download (baroiq)
//		Cambridge/Winpilot glider software (cambridge)
//		CarteSurTable data file (cst)
//		Cetus for Palm/OS (cetus)
//		CoastalExplorer XML (coastexp)
//		Comma separated values (csv)
//		CompeGPS data files (.wpt/.trk/.rte) (compegps)
//		CoPilot Flight Planner for Palm/OS (copilot)
//		cotoGPS for Palm/OS (coto)
//		Custom "Everything" Style (custom)
//		Data Logger iBlue747 csv (iblue747)
//		Dell Axim Navigation System (.gpb) file format (axim_gpb)
//		DeLorme .an1 (drawing) file (an1)
//		DeLorme GPL (gpl)
//		DeLorme Street Atlas Plus (saplus)
//		DeLorme Street Atlas Route (saroute)
//		DeLorme XMap HH Native .WPT (xmap)
//		DeLorme XMap/SAHH 2006 Native .TXT (xmap2006)
//		DeLorme XMat HH Street Atlas USA .WPT (PPC) (xmapwpt)
//		Destinator Itineraries (.dat) (destinator_itn)
//		Destinator Points of Interest (.dat) (destinator_poi)
//		Destinator TrackLogs (.dat) (destinator_trl)
//		EasyGPS binary format (easygps)
//		Embedded Exif-GPS data (.jpg) (exif)
//		FAI/IGC Flight Recorder Data Format (igc)
//		Franson GPSGate Simulation (gpssim)
//		Fugawi (fugawi)
//		G7ToWin data files (.g7t) (g7towin)

//		Geocaching.com .loc (geo)
//		GeocachingDB for Palm/OS (gcdb)
//		Geogrid-Viewer ascii overlay file (.ovl) (ggv_ovl)
//		Geogrid-Viewer tracklogs (.log) (ggv_log)
//		GEOnet Names Server (GNS) (geonet)
//		GeoNiche .pdb (geoniche)
//		GlobalSat DG-100/BT-335 Download (dg-100)
//		Google Earth (Keyhole) Markup Language (kml)
//		Google Maps XML (google)
//		Google Navigator Tracklines (.trl) (gnav_trl)
//		GoPal GPS track log (.trk) (gopal)
//		GpilotS (gpilots)
//		GPS TrackMaker (gtm)
//		GPSBabel arc filter file (arc)
//		GpsDrive Format (gpsdrive)
//		GpsDrive Format for Tracks (gpsdrivetrack)
//		GPSman (gpsman)
//		GPSPilot Tracker for Palm/OS (gpspilot)
//		gpsutil (gpsutil)
//		GPX XML (gpx)
//		HikeTech (hiketech)
//		Holux (gm-100) .wpo Format (holux)
//		Holux M-241 (MTK based) Binary File Format (m241-bin)
//		Holux M-241 (MTK based) download (m241)
//		HSA Endeavour Navigator export File (hsandv)
//		HTML Output (html)
//		Humminbird tracks (.ht) (humminbird_ht)
//		Humminbird waypoints and routes (.hwr) (humminbird)
//		IGN Rando track files (ignrando)
//		iGO2008 points of interest (.upoi) (igo2008_poi)
//		IGO8 .trk (igo8)
//		Jelbert GeoTagger data file (jtr)
//		Kartex 5 Track File (ktf2)
//		Kartex 5 Waypoint File (kwf2)
//		Kompass (DAV) Track (.tk) (kompass_tk)
//		Kompass (DAV) Waypoints (.wp) (kompass_wp)
//		KuDaTa PsiTrex text (psitrex)
//		Lowrance USR (lowranceusr)
//		Magellan Explorist Geocaching (maggeo)
//		Magellan Mapsend (mapsend)
//		Magellan NAV Companion for Palm/OS (magnav)
//		Magellan SD files (as for eXplorist) (magellanx)
//		Magellan SD files (as for Meridian) (magellan)
//		Magellan serial protocol (magellan)
//		MagicMaps IK3D project file (.ikt) (ik3d)
//		Map&amp;Guide 'TourExchangeFormat' XML (tef)
//		Map&amp;Guide to Palm/OS exported files (.pdb) (mag_pdb)
//		MapAsia track file (.tr7) (mapasia_tr7)
//		Mapopolis.com Mapconverter CSV (mapconverter)
//		MapTech Exchange Format (mxf)
//		Memory-Map Navigator overlay files (.mmo) (mmo)
//		Microsoft AutoRoute 2002 (pin/route reader) (msroute)
//		Microsoft Streets and Trips (pin/route reader) (msroute)
//		Microsoft Streets and Trips 2002-2007 (s_and_t)
//		Motorrad Routenplaner (Map&amp;Guide) .bcr files (bcr)
//		MS PocketStreets 2002 Pushpin (psp)
//		MTK Logger (iBlue 747,...) Binary File Format (mtk-bin)
//		MTK Logger (iBlue 747,Qstarz BT-1000,...) download (mtk)
//		National Geographic Topo .tpg (waypoints) (tpg)
//		National Geographic Topo 2.x .tpo (tpo2)
//		National Geographic Topo 3.x/4.x .tpo (tpo3)
//		Navicache.com XML (navicache)
//		Navigon Mobile Navigator .rte files (nmn4)
//		Navigon Waypoints (navigonwpt)
//		NaviGPS GT-11/BGT-11 Download (navilink)
//		NaviGPS GT-31/BGT-31 datalogger (.sbp) (sbp)
//		Navitel binary track (.bin) (navitel_trk)
//		Navitrak DNA marker format (dna)
//		NetStumbler Summary File (text) (netstumbler)
//		NIMA/GNIS Geographic Names File (nima)
//		NMEA 0183 sentences (nmea)
//		Nokia Landmark Exchange (lmx)
//		OpenStreetMap data files (osm)
//		OziExplorer (ozi)
//		PalmDoc Output (palmdoc)
//		PathAway Database for Palm/OS (pathaway)
//		Quovadis (quovadis)
//		Raymarine Waypoint File (.rwf) (raymarine)
//		See You flight analysis data (cup)
//		Skymap / KMD150 ascii files (skyforce)
//		Sportsim track files (part of zipped .ssz files) (sportsim)
//		Suunto Trek Manager (STM) .sdf files (stmsdf)
//		Suunto Trek Manager (STM) WaypointPlus files (stmwpp)
//		Swiss Map 25/50/100 (.xol) (xol)
//		Tab delimited fields useful for OpenOffice, Ploticus etc. (openoffice)
//		Textual Output (text)
//		TomTom Itineraries (.itn) (tomtom_itn)
//		TomTom POI file (.asc) (tomtom_asc)
//		TomTom POI file (.ov2) (tomtom)
//		TopoMapPro Places File (tmpro)
//		TrackLogs digital mapping (.trl) (dmtlog)
//		U.S. Census Bureau Tiger Mapping Service (tiger)
//		Universal csv with field structure in first line (unicsv)
//		Vcard Output (for iPod) (vcard)
//		VidaOne GPS for Pocket PC (.gpb) (vidaone)
//		Vito Navigator II tracks (vitosmt)
//		Vito SmartMap tracks (.vtt) (vitovtt)
//		WiFiFoFum 2.0 for PocketPC XML (wfff)
//		Wintec WBT-100/200 Binary File Format (wbt-bin)
//		Wintec WBT-100/200 GPS Download (wbt)
//		Wintec WBT-201/G-Rays 2 Binary File Format (wbt-tk1)
//		Yahoo Geocode API data (yahoo)


		public function get options():Options
		{
			return _options;
		}

		public function set options(value:Options):void
		{
			_options = value;
		}
		
		public function get text():String
		{
			return this._format + this._options.formattedArguments();
		}

	}
}