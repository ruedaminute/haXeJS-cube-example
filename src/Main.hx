package ;

/*

Trying to create a mediator that does not exist, should throw exception at runtime.
agent.mediatorMap.createMediator( controlsView );

*/

import com.ruedaminute.icebreakers.events.AppEvent;
import com.ruedaminute.icebreakers.view.AppView;
import com.ruedaminute.icebreakers.view.SlideViewer;
import com.ruedaminute.icebreakers.view.SplashScreenView;
import com.ruedaminute.icebreakers.view.MenuView;
import js.JQuery;
import js.Lib;
import sample.view.BodyView;
import sample.view.ControlsView;
import jsSample.JSContext;
import sample.view.BlueBoxView;
import sample.view.RedBoxView;
import sample.events.BoxEvent;
import xirsys.cube.events.AgentEvent;
import xirsys.cube.events.IEvent;


class Main {
	
	private var agent : JSContext;
	
	public static function main() {
		var app = new Main();
	}
	
	public function new() {
		agent = new JSContext( new BodyView(), false );
		agent.addEventHandler( AgentEvent.STARTUP_COMPLETE, handleStartup );
		agent.initiate();
	}
	
	private function handleStartup( evt : IEvent ) : Void {
		
		var splashView = new SplashScreenView(Lib.document.getElementById("splashScreen"));
		agent.mediatorMap.createMediator( splashView );
		
		var menuView = new MenuView(Lib.document.getElementById("menuScreen"));
		agent.mediatorMap.createMediator( menuView );
		
		var slideViewer = new SlideViewer(Lib.document.getElementById("slide"));
		agent.mediatorMap.createMediator( slideViewer );
		
		var appView = new AppView(splashView, menuView, slideViewer);
		agent.mediatorMap.createMediator( appView );
		
		/*var controlsView = new ControlsView( js.Lib.document.createElement("div") );
		agent.container.view.appendChild(controlsView.view);
		agent.mediatorMap.createMediator( controlsView );*/
		
		agent.eventDispatcher.dispatch( AppEvent.SHOW_SPLASH, new AppEvent() );
		agent.eventDispatcher.dispatch( AppEvent.LOAD_DATA, new AppEvent() );
	}
	
	private function handleRedClick( evt )
	{
		agent.eventDispatcher.dispatch( BoxEvent.SHOW_BOX, new BoxEvent( "red" ) );
	}
	
	private dynamic function handleBlueClick( evt )
	{
		agent.eventDispatcher.dispatch( BoxEvent.SHOW_BOX, new BoxEvent( "blue" ) );
	}
}