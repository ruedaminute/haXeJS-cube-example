package jsSample;

import xirsys.cube.core.Agent;
import js.Dom.HtmlDom;
import sample.events.BoxEvent;
import xirsys.cube.events.IEvent;
import xirsys.cube.events.AgentEvent;
import sample.controller.ShowBoxCommand;
import sample.view.BlueBoxView;
import sample.view.BlueBoxViewMediator;
import sample.view.RedBoxView;
import sample.view.RedBoxViewMediator;
import sample.view.ControlsView;
import sample.view.ControlsViewMediator;
import com.ruedaminute.icebreakers.view.SlideView;
import com.ruedaminute.icebreakers.view.SlideViewMediator;
import com.ruedaminute.icebreakers.view.SplashScreenView;
import com.ruedaminute.icebreakers.view.SplashViewMediator;
import com.ruedaminute.icebreakers.view.MenuView;
import com.ruedaminute.icebreakers.view.MenuViewMediator;
import com.ruedaminute.icebreakers.events.AppEvent;
import com.ruedaminute.icebreakers.model.Model;
import com.ruedaminute.icebreakers.controller.ShowSlideCommand;

class JSContext extends Agent<Dynamic,IEvent> {
	
	public function new( container : Dynamic, autoStart : Bool )
	{
		super( container, autoStart );
	}
	
	override public function initiate()
	{
		mediatorMap.mapView( BlueBoxView, BlueBoxViewMediator );
		mediatorMap.mapView( RedBoxView, RedBoxViewMediator );
		mediatorMap.mapView(ControlsView, ControlsViewMediator);
		mediatorMap.mapView(SlideView, SlideViewMediator);
		mediatorMap.mapView(SplashScreenView, SplashViewMediator);
		mediatorMap.mapView(MenuView, MenuViewMediator);
		
		commandMap.mapEvent ( AppEvent.SHOW_SLIDE, ShowSlideCommand, AppEvent);
		commandMap.mapEvent( BoxEvent.SHOW_BOX, ShowBoxCommand, BoxEvent );
		
		injector.mapSingleton( Model );
		
		dispatch( AgentEvent.STARTUP_COMPLETE, null );
	}
}