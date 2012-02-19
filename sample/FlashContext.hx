package sample;

import xirsys.cube.core.Agent;
import flash.display.MovieClip;
import sample.events.BoxEvent;
import xirsys.cube.events.IEvent;
import xirsys.cube.events.AgentEvent;
import sample.controller.ShowBoxCommand;
import sample.view.BlueBoxView;
import sample.view.BlueBoxViewMediator;
import sample.view.RedBoxView;
import sample.view.RedBoxViewMediator;

class FlashContext extends Agent<MovieClip,IEvent> {
	
	public function new( container : MovieClip, autoStart : Bool )
	{
		super( container, autoStart );
	}
	
	override public function initiate()
	{
		mediatorMap.mapView( BlueBoxView, BlueBoxViewMediator );
		mediatorMap.mapView( RedBoxView, RedBoxViewMediator );
		commandMap.mapEvent( BoxEvent.SHOW_BOX, ShowBoxCommand, BoxEvent );
		dispatch( AgentEvent.STARTUP_COMPLETE, null );
	}
}
