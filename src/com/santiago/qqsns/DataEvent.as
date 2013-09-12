package com.santiago.qqsns
{
	import flash.events.Event;

	public class DataEvent extends Event
	{
		private var eventData:*;
	
		public function DataEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, data:* = false)
		{
			super(type, bubbles, cancelable);
			eventData = data;	
		}
		
		public function get data():*
		{
			return eventData;
		}
		
		override public function clone():Event
		{
			return new DataEvent(type, bubbles, cancelable, eventData);
		}
		
		override public function toString():String{
			return formatToString("DataEvent", "type", "bubbles", "cancelable", "data");
		}
	}

}