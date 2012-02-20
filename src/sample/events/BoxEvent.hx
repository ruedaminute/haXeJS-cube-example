package sample.events;

class BoxEvent implements xirsys.cube.events.IEvent {
	public static var SHOW_RED_BOX : String = "showRedBox";
	public static var SHOW_BLUE_BOX : String = "showBlueBox";
	public static var SHOW_BOX : String	= "showBox";
	
	public var boxType : String;
	
	public function new( type : String )
	{
		boxType = type;
	}
}
