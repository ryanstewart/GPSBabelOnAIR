package com.digitalbackcountry.gpsbabel
{
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.filesystem.File;
	import flash.system.System;
	import flash.utils.ByteArray;

	public class GPSBable
	{
		private var _process:NativeProcess;
		private var _buffer:ByteArray;
		private var _gpsBabelLocation:File;
		private var _version:String;
		
		public function GPSBable(gpsBabel:File)
		{
			this._gpsBabelLocation = gpsBabel;
		}
		
		public function convertToFile(file:File,convertToFormat:Format,convertFromFormat:Format,convertedFileName:String):void
		{	
			var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
				npsi.executable = _gpsBabelLocation;
			var args:Vector.<String> = new Vector.<String>;
				args.push("-i");
				args.push(convertFromFormat.text);
				args.push("-f");
				args.push(file.nativePath);
				args.push("-o");
				args.push(convertToFormat.text);
				args.push("-F");
				args.push(file.parent.nativePath +'/'+convertedFileName);
				npsi.arguments = args;
				
			_buffer = new ByteArray();
			_process = new NativeProcess();
			_process.addEventListener(ProgressEvent.STANDARD_OUTPUT_DATA,onStandardOutputData);
			_process.addEventListener(ProgressEvent.STANDARD_ERROR_DATA,onStandardErrorData);
			_process.addEventListener(IOErrorEvent.STANDARD_ERROR_IO_ERROR,onStandardIOError);
			_process.start(npsi);
			
		}
		
		public function getVersion():void
		{
			var npStartupInfo:NativeProcessStartupInfo = new NativeProcessStartupInfo();
				npStartupInfo.executable = _gpsBabelLocation;
			var args:Vector.<String> = new Vector.<String>;
				args.push('-V');
				npStartupInfo.arguments = args;
				
			_buffer = new ByteArray();
			_process = new NativeProcess();
			_process.addEventListener(ProgressEvent.STANDARD_OUTPUT_DATA,onStandardOutputData);
			_process.addEventListener(ProgressEvent.STANDARD_ERROR_DATA,onStandardErrorData);
			_process.start(npStartupInfo);
		}
		
		private function onStandardOutputData(event:ProgressEvent):void
		{
			var test:String = _process.standardOutput.readUTFBytes(_process.standardOutput.bytesAvailable);
			trace(test);
		}

		private function onStandardIOError(event:IOErrorEvent):void
		{
			trace('onStandardIOError');
		}

		private function onStandardErrorData(event:ProgressEvent):void
		{
			trace(_process.standardError.readUTFBytes(_process.standardError.bytesAvailable));
			//errorBytes.writeBytes(process.standardOutput.readBytes(process.standardError.process.standardOutput.bytesAvailable)); 
			trace('onStandardErrorData');
		}
	}
}