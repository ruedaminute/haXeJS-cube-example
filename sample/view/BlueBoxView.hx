package sample.view;

#if flash9
class BlueBoxView extends flash.display.MovieClip {
	public function new()
	{
		super();
		var g = graphics;
		g.beginFill( 0x000099 );
		g.drawRect( 0, 0, 150, 150 );
		g.endFill();
	}
}

#elseif js

import js.Dom;
import js.Dom.HtmlDom;
class BlueBoxView {
	
	public var view : js.HtmlDom;
	public var visible ( null, setVisible ) : Bool;
	
	public function new( view )
	{
		this.view = view;
		view.style.width = "150";
		view.style.height = "150";
		view.style.backgroundColor = "#0000FF";
	}
	
	public function setVisible( show : Bool ) : Bool
	{
		view.style.display = ( show ) ? "" : "none";
		return show;
	}
}
#end