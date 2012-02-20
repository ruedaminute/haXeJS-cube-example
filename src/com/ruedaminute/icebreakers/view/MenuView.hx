package com.ruedaminute.icebreakers.view;

import js.Dom.HtmlDom;
import js.Dom;
import js.JQuery;
import js.Lib;
/**
 * ...
 * @author Michelle Rueda
 */

class MenuView extends BaseView
{

	public var businessButton:JQuery;
	public var partyButton:JQuery;
	public var flirtingButton:JQuery;
	public var miscButton:JQuery;
	
	public function new(view) 
	{
		this.view = view;
		this.businessButton = new JQuery("#businessButton");
		this.partyButton = new JQuery("#partyButton");
		this.flirtingButton = new JQuery("#flirtingButton");
		this.miscButton = new JQuery("#miscButton");
		
	}
	
}