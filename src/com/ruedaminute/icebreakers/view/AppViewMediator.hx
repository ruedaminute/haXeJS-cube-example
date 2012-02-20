package com.ruedaminute.icebreakers.view;

import com.ruedaminute.icebreakers.events.AppEvent;
/**
 * ...
 * @author Michelle Rueda
 */

class AppViewMediator extends xirsys.cube.mvcs.Mediator 
{
	@Inject
	public var view:AppView;

	override public function onRegister()
	{
		super.onRegister();
		
		eventDispatcher.addEventHandler( AppEvent.SHOW_SPLASH , view.showSplashScreen );
		eventDispatcher.addEventHandler( AppEvent.SHOW_MENU , view.showMenuScreen );
		eventDispatcher.addEventHandler( AppEvent.SHOW_SLIDES, view.showSlides );
	}
	
}