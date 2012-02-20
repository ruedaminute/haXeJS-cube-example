package com.ruedaminute.icebreakers.controller;

import com.ruedaminute.icebreakers.model.Model;
import js.Lib;
import xirsys.cube.mvcs.Command;
/**
 * ...
 * @author Michelle Rueda
 */


class LoadDataCommand extends Command 
{

	@Inject
	public var model:Model;
	
	override public function execute()
	{
		model.setData();
	}
	
}