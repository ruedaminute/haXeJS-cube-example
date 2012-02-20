package sample.controller;

import xirsys.cube.mvcs.Command;
import sample.events.BoxEvent;

class ShowBoxCommand extends Command {
	@Inject
	public var evt : BoxEvent;
	
	override public function execute()
	{
		switch( evt.boxType )
		{
			case "red":
				eventDispatcher.dispatch( BoxEvent.SHOW_RED_BOX );
			case "blue":
				eventDispatcher.dispatch( BoxEvent.SHOW_BLUE_BOX );
		}
	}
}
