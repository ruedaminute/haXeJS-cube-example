package com.ruedaminute.icebreakers.controller;

import com.ruedaminute.icebreakers.model.Model;
import js.Lib;
import xirsys.cube.mvcs.Command;
import com.ruedaminute.icebreakers.events.AppEvent;
import com.ruedaminute.icebreakers.events.SlideEvent;
/**
 * ...
 * @author Michelle Rueda
 */

class ShowSlidesCommand extends Command
{

	@Inject
	public var event : AppEvent;
	
	@Inject
	public var model:Model;
	
	override public function execute()
	{
		if (event.slideType != null)
		{
			model.currentSlideType = event.slideType;
		}
		
		eventDispatcher.dispatch( SlideEvent.SHOW_SLIDE , new SlideEvent(model.getData(model.currentSlideType)));
		eventDispatcher.dispatch( AppEvent.SHOW_SLIDES, new AppEvent() );
	}
	
}