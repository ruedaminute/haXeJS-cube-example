package com.ruedaminute.icebreakers.view;
import js.JQuery;
import com.ruedaminute.icebreakers.events.SlideEvent;
import com.ruedaminute.icebreakers.events.AppEvent;

/**
 * ...
 * @author Michelle Rueda
 */

class SlideViewerMediator extends xirsys.cube.mvcs.Mediator
{

	@Inject
	public var view : SlideViewer;

	override public function onRegister()
	{
		super.onRegister();
		
		eventDispatcher.addEventHandler( SlideEvent.SHOW_SLIDE , createSlide );
	}
	
	private function createSlide( event:SlideEvent ):Void
	{
		var currentSlide:Slide = view.createSlide( event );
		if (currentSlide != null)
		{
			mediatorMap.createMediator( currentSlide );
		}
	}
	
}