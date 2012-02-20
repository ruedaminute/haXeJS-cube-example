package com.ruedaminute.icebreakers.view;

import js.JQuery;
import js.Lib;

import com.ruedaminute.icebreakers.model.LineVO;
/**
 * ...
 * @author Michelle Rueda
 */

class Slide 
{

	public var dom:JQuery;
	public var nextButton:JQuery;
	public var backButton:JQuery;
	
	private var _data:Array<LineVO>;
	private var prompt:JQuery;
	private var reply:JQuery;

	
	public function new() 
	{
		dom = new JQuery("#slide");
		prompt = new JQuery(".prompt");
		reply = new JQuery(".reply");
		nextButton = new JQuery("#nextButton");
		backButton = new JQuery("#backButton");
	}
	
	public function clear():Void
	{
		new JQuery(".content").html("");
	}
	
	private function get_data():Array<LineVO> 
	{
		return _data;
	}
	
	private function set_data(value:Array<LineVO>):Array <LineVO>
	{
		_data = value;
		createSlideContent();
		return _data;
		
	}
	
	public var data(get_data, set_data):Array<LineVO>;
	
	private function createSlideContent():Void
	{
		var content = dom.find(".content");
		for ( i in 0...data.length ) {
			var line:LineVO = data[i];
			var copy:JQuery;
			if (line.type == "prompt")
			{
				copy = prompt.clone(false);
			} else if (line.type == "reply")
			{
				copy = reply.clone(false);
			} else {
				copy = prompt.clone(false); //default to prompt copy
			}
			copy.html(line.text);
			new JQuery(content[0]).append(copy);
			
		}
		
	}

}