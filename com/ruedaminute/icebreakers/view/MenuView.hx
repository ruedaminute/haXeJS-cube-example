package com.ruedaminute.icebreakers.view;

import js.Dom.HtmlDom;
import js.Dom;
import js.JQuery;
import js.Lib;
/**
 * ...
 * @author Michelle Rueda
 */

class MenuView 
{

	public var view:HtmlDom;
	public var businessButton:HtmlDom;
	public var partyButton:HtmlDom;
	public var flirtingButton:HtmlDom;
	public var miscButton:HtmlDom;
	
	public function new(view) 
	{
		this.view = view;
		this.businessButton = Lib.document.getElementById("businessButton");
		this.partyButton = Lib.document.getElementById("partyButton");
		this.flirtingButton = Lib.document.getElementById("flirtingButton");
		this.miscButton = Lib.document.getElementById("miscButton");
		
	}
	
}