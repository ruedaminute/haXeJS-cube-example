package com.ruedaminute.icebreakers.view;
import com.ruedaminute.icebreakers.events.AppEvent;
import js.JQuery;
import js.Lib;
import js.Dom;

/**
 * ...
 * @author Michelle Rueda
 */

class SplashViewMediator extends xirsys.cube.mvcs.Mediator 
{
	@Inject
	public var view : SplashScreenView;
	
	override public function onRegister()
	{
		super.onRegister();
		
		view.startButton.click(handleButtonClick);
	}
	
	private function handleButtonClick(e:JqEvent):Void {
		eventDispatcher.dispatch( AppEvent.SHOW_MENU, new AppEvent() );
	}
}