package com.ruedaminute.icebreakers.events;

/**
 * ...
 * @author Michelle Rueda
 */

class AppEvent implements xirsys.cube.events.IEvent 
{

	public static var SHOW_SLIDE:String = "showSlide";
	
	public var slideType : String;
	
	public function new( type : String )
	{
		slideType = type;
	}
	
}