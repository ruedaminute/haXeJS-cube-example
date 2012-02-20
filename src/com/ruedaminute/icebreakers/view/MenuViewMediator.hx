package com.ruedaminute.icebreakers.view;
import js.JQuery;
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
		
		view.businessButton.click(getBusinessIcebreakers);
		view.partyButton.click(getPartyIcebreakers);
		view.flirtingButton.click(getFlirtingIcebreakers);
		view.miscButton.click(getMiscIcebreakers);
	}
	
	private function getBusinessIcebreakers(e:JqEvent):Void {
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDE_OF_TYPE , new AppEvent("business") );
		
	}
	
	private function getPartyIcebreakers(e:JqEvent):Void
	{
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDE_OF_TYPE , new AppEvent("party") );
		
	}
	
	private function getFlirtingIcebreakers(e:JqEvent):Void
	{
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDE_OF_TYPE , new AppEvent("flirting") );
		
	}
	
	private function getMiscIcebreakers(e:JqEvent):Void
	{
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDE_OF_TYPE , new AppEvent("misc") );
	}
	
}