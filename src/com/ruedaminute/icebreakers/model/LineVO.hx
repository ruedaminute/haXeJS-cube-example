package com.ruedaminute.icebreakers.model;

/**
 * ...
 * @author Michelle Rueda
 */

class LineVO 
{

	public var text:String;
	public var type:String;
	
	public function new(type:String, text:String) 
	{
		this.text = text;
		this.type = type;
	}
	
}