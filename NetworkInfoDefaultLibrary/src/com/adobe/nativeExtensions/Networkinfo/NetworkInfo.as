
/*

GnanaPrakash
Copyright 2015 Knobay Technologies
All Rights Reserved.
*/


package com.adobe.nativeExtensions.Networkinfo
{
	
	// Default NetworkInfo class to support platform other than iOS
	
	// The NetworkInfo object is a singleton. 
	// To get the single NetworkInfo object, use the static NetworkInfo.networkInfo property. 
	// Do not call the class constructor by calling new NetworkInfo().


	
	public class NetworkInfo
	{
		
		import flash.net.NetworkInterface;

		private static var _instance:NetworkInfo = null;
		private static var _shouldCreateInstance:Boolean = false;
		
		public function NetworkInfo()
		{
			// The NetworkInfo object is a singleton. 
			// To get the single NetworkInfo object, use the static NetworkInfo.networkInfo property. 
			// Do not use new NetworkInfo() in the application that uses this class.
			
			if (_shouldCreateInstance)
			{
				trace("Default pseudo NetworkInfo object");
			}
			else
			{
				throw new Error("Default pseudo NetworkInfo: ERROR!!");  
			}		
		}
		
		public static function get networkInfo():NetworkInfo {
			
			if(_instance == null)
			{
				_shouldCreateInstance = true; 
				_instance = new NetworkInfo();
				_shouldCreateInstance = false;
			}
			
			return _instance;
		} 
		
		// findInterfaces() finds the network interfaces on the device.
		public function findInterfaces():Vector.<NetworkInterface>
		{  
			trace ("Default pseudo NetworkInfo:  Entering findInterfaces()");
			var arr:Array = new Array();
			var rarr:Vector.<NetworkInterface> = Vector.<NetworkInterface>(arr);
			return rarr;		
		}
	}
}





