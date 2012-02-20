package com.ruedaminute.icebreakers.view;
import js.Dom.HtmlDom;
import js.JQuery;

/**
 * ...
 * @author Michelle Rueda
 */

class BaseView 
{

	public var view:HtmlDom;
	
	/*public function new() 
	{
		
	}*/
	
	public function show():Void
	{
		new JQuery(view).css("display", "block");
	}
	
	public function hide():Void
	{
		new JQuery(view).css("display", "none");
	}
}