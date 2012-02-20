package jsSample;

import xirsys.cube.core.Agent;
import js.Dom.HtmlDom;
import xirsys.cube.events.IEvent;
import xirsys.cube.events.AgentEvent;


import com.ruedaminute.icebreakers.view.Slide;
import com.ruedaminute.icebreakers.view.SlideMediator;
import com.ruedaminute.icebreakers.view.SlideViewer;
import com.ruedaminute.icebreakers.view.SlideViewerMediator;
import com.ruedaminute.icebreakers.view.SplashScreenView;
import com.ruedaminute.icebreakers.view.SplashViewMediator;
import com.ruedaminute.icebreakers.view.MenuView;
import com.ruedaminute.icebreakers.view.MenuViewMediator;
import com.ruedaminute.icebreakers.view.AppView;
import com.ruedaminute.icebreakers.view.AppViewMediator;
import com.ruedaminute.icebreakers.events.AppEvent;
import com.ruedaminute.icebreakers.model.Model;
import com.ruedaminute.icebreakers.controller.ShowSlidesCommand;
import com.ruedaminute.icebreakers.controller.LoadDataCommand;

class JSContext extends Agent<Dynamic,IEvent> {
	
	public function new( container : Dynamic, autoStart : Bool )
	{
		super( container, autoStart );
	}
	
	override public function initiate()
	{
		
		mediatorMap.mapView(SlideViewer, SlideViewerMediator);
		mediatorMap.mapView(SplashScreenView, SplashViewMediator);
		mediatorMap.mapView(MenuView, MenuViewMediator);
		mediatorMap.mapView(AppView, AppViewMediator);
		mediatorMap.mapView(Slide, SlideMediator);
		
		commandMap.mapEvent ( AppEvent.LOAD_DATA, LoadDataCommand, AppEvent);
		commandMap.mapEvent ( AppEvent.SHOW_SLIDE_OF_TYPE, ShowSlidesCommand, AppEvent);
		
		injector.mapSingleton( Model );
		
		dispatch( AgentEvent.STARTUP_COMPLETE, null );
	}
}