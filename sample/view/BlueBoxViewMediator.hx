package sample.view;

import sample.view.BlueBoxView;
import sample.events.BoxEvent;

class BlueBoxViewMediator extends xirsys.cube.mvcs.Mediator {
	@Inject
	public var view : BlueBoxView;

	override public function onRegister()
	{
		super.onRegister();
		eventDispatcher.addEventHandler( BoxEvent.SHOW_BLUE_BOX, showBox );
		eventDispatcher.addEventHandler( BoxEvent.SHOW_RED_BOX, hideBox );
	}
	
	private function showBox( e )
	{
		view.visible = true;
	}
	
	private function hideBox( e )
	{
		view.visible = false;
	}
}