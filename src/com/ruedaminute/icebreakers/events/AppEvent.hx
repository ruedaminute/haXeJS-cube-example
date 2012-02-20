package com.ruedaminute.icebreakers.events;

/**
 * ...
 * @author Michelle Rueda
 */

class AppEvent implements xirsys.cube.events.IEvent 
{

	public static var LOAD_DATA:String = "loadData";
	public static var SHOW_SPLASH:String = "showSplash";
	public static var SHOW_SLIDE_OF_TYPE:String = "showSlide";
	public static var SHOW_MENU:String = "showMenu";
	public static var SHOW_SLIDES:String = "showSlides";
	
	public var slideType:String;
	
	public function new( type : String = null )
	{
		slideType = type;
	}
	
}