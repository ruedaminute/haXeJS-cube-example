package com.ruedaminute.icebreakers.view;
import com.ruedaminute.icebreakers.events.SlideEvent;
import js.Dom.HtmlDom;
import js.Lib;

/**
 * ...
 * @author Michelle Rueda
 */

class SlideViewer extends BaseView
{
	private var currentSlide:Slide;
	private var firstRun:Bool;
	
	public function new(view) 
	{
		this.view = view;
		firstRun = true;
	}
	
	public function createSlide( event:SlideEvent ):Slide
	{
		if (event.conversation != null && firstRun)
		{
			currentSlide = new Slide(); 
			currentSlide.data = event.conversation.script;
			firstRun = false;
			return currentSlide;
		} else if (event.conversation != null && !firstRun)
		{
			currentSlide.clear();
			currentSlide.data = event.conversation.script;
			return null;
		} else {
			return null;
		}
	}
	
}