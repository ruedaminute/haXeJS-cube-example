package com.ruedaminute.icebreakers.view;
import js.Lib;
import js.Dom;
import com.ruedaminute.icebreakers.events.AppEvent;
/**
 * ...
 * @author Michelle Rueda
 */

class MenuViewMediator extends xirsys.cube.mvcs.Mediator 
{

	@Inject
	public var view : MenuView;
	
	override public function onRegister()
	{
		super.onRegister();
		
		view.businessButton.onclick = handleButtonClick;
		view.partyButton.onclick = handleButtonClick;
		view.flirtingButton.onclick = handleButtonClick;
		view.miscButton.onclick = handleButtonClick;
	}
	
	private function handleButtonClick(e:js.Event):Void {
		if (e.target == view.businessButton) {
			eventDispatcher.dispatch( AppEvent.SHOW_SLIDE , new AppEvent("business") );
		} 
		else if (e.target == view.partyButton)
		{
			eventDispatcher.dispatch( AppEvent.SHOW_SLIDE , new AppEvent("party") );
		}
		else if (e.target == view.flirtingButton)
		{
			eventDispatcher.dispatch( AppEvent.SHOW_SLIDE , new AppEvent("flirting") );
		}
		else if (e.target == view.miscButton)
		{
			eventDispatcher.dispatch( AppEvent.SHOW_SLIDE , new AppEvent("misc") );
		}
	}
	
}