package sample.view;

#if flash9
class RedBoxView extends flash.display.MovieClip {
	public function new()
	{
		super();
		var g = graphics;
		g.beginFill( 0x990000 );
		g.drawRect( 0, 0, 150, 150 );
		g.endFill();
	}
}

#elseif js

import js.Dom;
import js.Dom.HtmlDom;
class RedBoxView {
	
	public var view : js.HtmlDom;
	public var visible ( null, setVisible ) : Bool;
	
	public function new( view )
	{
		this.view = view;
		view.style.width = "150";
		view.style.height = "150";
		view.style.backgroundColor = "#FF0000";
	}
	
	public function setVisible( show : Bool ) : Bool
	{
		view.style.display = ( show ) ? "" : "none";
		return show;
	}
}
#end