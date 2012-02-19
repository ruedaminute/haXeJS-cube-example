package com.ruedaminute.icebreakers.view;
import js.JQuery;

/**
 * ...
 * @author Michelle Rueda
 */

class SlideViewMediator extends xirsys.cube.mvcs.Mediator
{

	@Inject
	public var view : SlideView;

	override public function onRegister()
	{
		super.onRegister();
		
		new JQuery(view.view).html("REPLACEING SHIT");
	}
	
}