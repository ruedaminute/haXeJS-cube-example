package com.ruedaminute.icebreakers.view;

import js.Dom.HtmlDom;
import js.Dom;
import js.JQuery;
/**
 * ...
 * @author Michelle Rueda
 */

class SplashScreenView extends BaseView
{

	
	public var startButton:JQuery;
	
	public function new(view) 
	{

		this.view = view;
		this.startButton = new JQuery("#startButton");
	}
	
	
}