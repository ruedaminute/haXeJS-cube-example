package com.ruedaminute.icebreakers.view;
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
		
		view.startButton.onclick = handleButtonClick;
	}
	
	private function handleButtonClick(e:js.Event):Void {
		if (e.target == view.startButton) {
			Lib.alert('yo');
		}
	}
}