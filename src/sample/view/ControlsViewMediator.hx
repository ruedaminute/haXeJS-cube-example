package sample.view;
import js.Dom;

import sample.view.ControlsView;
import sample.events.BoxEvent;

class ControlsViewMediator extends xirsys.cube.mvcs.Mediator {
	@Inject
	public var view : ControlsView;

	override public function onRegister()
	{
		super.onRegister();
		eventDispatcher.addEventHandler( BoxEvent.SHOW_RED_BOX, disableButton1 );
		eventDispatcher.addEventHandler( BoxEvent.SHOW_BLUE_BOX, disableButton2 );
		
		view.button1.onclick = handleButtonClick;
		view.button2.onclick = handleButtonClick;
	}
	
	private function handleButtonClick(e:js.Event):Void {
		if (e.target == view.button1) {
			eventDispatcher.dispatch( BoxEvent.SHOW_BOX, new BoxEvent("red") );
		} else if (e.target == view.button2) {
			eventDispatcher.dispatch( BoxEvent.SHOW_BOX, new BoxEvent("blue") );
		}
	}
	
	private function disableButton1(e) {
		view.disableButton1();
	}
	
	private function disableButton2(e) {
		view.disableButton2();
	}

}