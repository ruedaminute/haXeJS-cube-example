package com.ruedaminute.icebreakers.model;

/**
 * ...
 * @author Michelle Rueda
 */

class Model extends xirsys.cube.mvcs.Model
{
	
	public var currentSlideType:String; 
	
	private var businessData:Array<ConversationVO>;
	private var flirtingData:Array<ConversationVO>;
	private var partyData:Array<ConversationVO>;
	private var miscData:Array<ConversationVO>;
	
	public function setData():Void
	{
		setBusinessData();
		setFlirtingData();
		setPartyData();
		setMiscData();
	}
	
	public function getData(type:String):ConversationVO
	{
		switch (type)
		{
			case "business":
				return businessData[Math.floor(Math.random() * businessData.length)];
			case "flirting":
				return flirtingData[Math.floor(Math.random() * flirtingData.length)];
			case "party":
				return partyData[Math.floor(Math.random() * partyData.length)];
			case "misc":
				return miscData[Math.floor(Math.random() * miscData.length)];
			
		}
		return null;
	}
	
	private function setBusinessData():Void
	{
		var conversation1:ConversationVO = new ConversationVO();
		conversation1.script = [new LineVO("prompt", "What's this you're drinking?"), new LineVO("reply", "Chardonnay."), new LineVO("prompt", "I'm not a fan of Chardonnay personally.")];
		
		var conversation2:ConversationVO = new ConversationVO();
		conversation2.script = [new LineVO("prompt", "Where did you get that nametag?"), new LineVO("reply", "Over there."), new LineVO("prompt", "Would you mind walking over with me, I'm so bad with directions")];
		
		var conversation3:ConversationVO = new ConversationVO();
		conversation3.script = [new LineVO("prompt", "Hi!"), new LineVO("reply", "Hi."), new LineVO("prompt", "How's it going?"), new LineVO("reply", "OK, how about yourself?")];
		
		businessData= [conversation1, conversation2, conversation3];
	}
	
	private function setFlirtingData():Void
	{
		var conversation1:ConversationVO = new ConversationVO();
		conversation1.script = [ new LineVO("prompt", "You are looking very pretty/handsome today."), new LineVO("reply", "Oh thank you!"), new LineVO("prompt", "No problem") ];
		
		var conversation2:ConversationVO = new ConversationVO();
		conversation2.script = [ new LineVO("prompt", "Boy I bet everyone in here is jealous of me right now."), new LineVO("reply", "why?"), new LineVO("prompt", "Because I'm talking to you, of course!") ];
		
		var conversation3:ConversationVO = new ConversationVO();
		conversation3.script = [ new LineVO("prompt", "*Bumps into target* Oh excuse me! How clumsy of me..."), new LineVO("reply", "No, that's OK"), new LineVO("prompt", "Here let me clean this up") ];
		
		flirtingData = [conversation1, conversation2, conversation3];
	}
	
	private function setPartyData():Void
	{
		var conversation1:ConversationVO = new ConversationVO();
		conversation1.script = [ new LineVO("prompt", "Who farted?"), new LineVO("reply", "**looks around**"), new LineVO("prompt", "It was you wasn't it?") ];
		
		var conversation2:ConversationVO = new ConversationVO();
		conversation2.script = [ new LineVO("prompt", "How many of these you think you can drink in one night?"), new LineVO("reply", "Oh, like 5 maybe?"), new LineVO("prompt", "That's pitiful")];
		
		var conversation3:ConversationVO = new ConversationVO();
		conversation3.script = [ new LineVO("prompt", "So, are you a friend of the host/hostess?"), new LineVO("reply", "Yes"), new LineVO("prompt", "Nice. I hear they get around"), new LineVO("reply", "No"), new LineVO("prompt", "Yeah, neither am I. I've heard he/she is a real drag...") ];
		
		partyData = [conversation1, conversation2, conversation3];
	
	}
	
	private function setMiscData():Void
	{
		var conversation1:ConversationVO = new ConversationVO();
		conversation1.script = [ new LineVO("prompt", "This is one of my favorite songs!"), new LineVO("reply", "Oh, I like it a lot too."), new LineVO("prompt", "Really? Do you also like (similar artist)?"), new LineVO("reply", "Oh, I hate this song"), new LineVO("prompt", "Well we can't all have good taste in music now can we?")];
		
		var conversation2:ConversationVO = new ConversationVO();
		conversation2.script = [ new LineVO("prompt", "Wow this is crazier than one of those toddler pageant shows."), new LineVO("reply", "(shows interest in topic)"), new LineVO("prompt", "(You should leave now)"), new LineVO("reply", "Oh, I hate those things."), new LineVO("prompt", "Best response is, what's that? But that's a good response too.") ];
		
		var conversation3:ConversationVO = new ConversationVO();
		conversation3.script = [ new LineVO("prompt", "Excuse me can I bum a cigarette?"), new LineVO("reply", "Sure"), new LineVO("prompt", "Oh just kidding I would never do something as disgusting as smoke!"), new LineVO("reply", "No, don't have any"), new LineVO("prompt", "Cheap bastard!") ];
		
		miscData = [conversation1, conversation2, conversation3];
	}
	
}