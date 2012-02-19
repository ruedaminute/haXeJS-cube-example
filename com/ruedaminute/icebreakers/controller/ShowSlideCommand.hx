package com.ruedaminute.icebreakers.controller;

import com.ruedaminute.icebreakers.model.Model;
import js.Lib;
import xirsys.cube.mvcs.Command;
import com.ruedaminute.icebreakers.events.AppEvent;
/**
 * ...
 * @author Michelle Rueda
 */

class ShowSlideCommand extends Command
{

	@Inject
	public var evt : AppEvent;
	
	@Inject
	public var model:Model;
	
	override public function execute()
	{
		if (evt.slideType == "business")
		{
			Lib.alert(model.getData());
		}
	}
	
}