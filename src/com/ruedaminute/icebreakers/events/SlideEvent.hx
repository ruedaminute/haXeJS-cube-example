package com.ruedaminute.icebreakers.events;
import com.ruedaminute.icebreakers.model.ConversationVO;

/**
 * ...
 * @author Michelle Rueda
 */

class SlideEvent implements xirsys.cube.events.IEvent 
{
	public static var SHOW_SLIDE:String = "showSlide";
	
	public var conversation:ConversationVO;
	
	public function new( convo :ConversationVO )
	{
		conversation = convo;
	}
	
}