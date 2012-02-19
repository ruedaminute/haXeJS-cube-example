package sample.view;

import sample.view.RedBoxView;
import sample.events.BoxEvent;

class RedBoxViewMediator extends xirsys.cube.mvcs.Mediator {
	@Inject
	public var view : RedBoxView;

	override public function onRegister()
	{
		super.onRegister();
		eventDispatcher.addEventHandler( BoxEvent.SHOW_RED_BOX, showBox );
		eventDispatcher.addEventHandler( BoxEvent.SHOW_BLUE_BOX, hideBox );
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