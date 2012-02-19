package com.ruedaminute.icebreakers.view;

import js.Dom.HtmlDom;
import js.Dom;
import js.JQuery;
/**
 * ...
 * @author Michelle Rueda
 */

class SplashScreenView 
{

	public var view:HtmlDom;
	public var startButton:HtmlDom;
	
	public function new(view) 
	{
		this.view = view;
		this.startButton = new JQuery(view).find(".startButton")[0];
	}
}