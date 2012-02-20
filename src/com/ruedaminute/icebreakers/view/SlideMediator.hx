package com.ruedaminute.icebreakers.view;
import js.JQuery;
import com.ruedaminute.icebreakers.events.AppEvent;

/**
 * ...
 * @author Michelle Rueda
 */

class SlideMediator extends xirsys.cube.mvcs.Mediator 
{

	@Inject
	public var view : Slide;
	
	override public function onRegister()
	{
		super.onRegister();
		
		view.nextButton.click(getNextSlide);
		view.backButton.click(getMenuView);
	}
	
	private function getNextSlide(event:JqEvent):Void
	{
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDE_OF_TYPE , new AppEvent() );
	}
	
	private function getMenuView(event:JqEvent):Void
	{
		eventDispatcher.dispatch( AppEvent.SHOW_MENU, new AppEvent() );
	}
	
}