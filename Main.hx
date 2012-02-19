package ;

/*

Trying to create a mediator that does not exist, should throw exception at runtime.
agent.mediatorMap.createMediator( controlsView );

*/



import com.ruedaminute.icebreakers.view.SlideView;
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
		
		var slideView = new SlideView(Lib.document.getElementById("slide"));
		agent.mediatorMap.createMediator( slideView );
		
		var menuView = new MenuView(Lib.document.getElementById("menuScreen"));
		agent.mediatorMap.createMediator( menuView );
		
		/*var blue = new BlueBoxView( js.Lib.document.createElement( "div" ) );
		agent.container.view.appendChild( blue.view );
		agent.mediatorMap.createMediator( blue );
		blue.visible = false;
		
		var red = new RedBoxView( js.Lib.document.createElement( "div" ) );
		agent.container.view.appendChild( red.view );
		agent.mediatorMap.createMediator( red );
		
		var redBtn : js.Dom.Button = cast js.Lib.document.createElement( "input" );
		redBtn.type = "button";
		redBtn.value = "Red";
		redBtn.onclick = handleRedClick;
		agent.container.view.appendChild( redBtn );
		
		var blueBtn : js.Dom.Button = cast js.Lib.document.createElement( "input" );
		blueBtn.type = "button";
		blueBtn.value = "Blue";
		blueBtn.onclick = handleBlueClick;
		agent.container.view.appendChild( blueBtn );
		
		var controlsView = new ControlsView( js.Lib.document.createElement("div") );
		agent.container.view.appendChild(controlsView.view);
		agent.mediatorMap.createMediator( controlsView );*/
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