package sample.view;

import js.Lib;
import js.Dom;
import js.Dom.HtmlDom;

class ControlsView {
	
	public var view : js.HtmlDom;
	public var button1 : Button;
	public var button2 : Button;
	
	public function new( view )
	{
		this.view = view;
		button1 = cast Lib.document.createElement("input");
		button1.type = "button";
		button1.value = "Button1";
		this.view.appendChild(button1);
		
		button2 = cast Lib.document.createElement("input");
		button2.type = "button";
		button2.value = "Button2";
		this.view.appendChild(button2);
	}
	
	public function disableButton1():Void {
		button1.disabled = true;
		button2.disabled = false;
	}
	
	public function disableButton2():Void {
		button1.disabled = false;
		button2.disabled = true;
	}
	
}