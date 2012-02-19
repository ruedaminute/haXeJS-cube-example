package sample.view;

import js.Dom;
import js.Dom.HtmlDom;

class BodyView {
	public var view : HtmlDom;
	
	public function new() {
		view = js.Lib.document.body;
	}
}
