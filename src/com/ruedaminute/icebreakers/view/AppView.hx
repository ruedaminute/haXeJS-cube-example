package com.ruedaminute.icebreakers.view;
import com.ruedaminute.icebreakers.events.AppEvent;

/**
 * ...
 * @author Michelle Rueda
 */

class AppView 
{

	private var splashView:SplashScreenView;
	private var menuView:MenuView;
	private var slideViewer:SlideViewer;
	
	public function new(splashView:SplashScreenView, menuView:MenuView, slideViewer:SlideViewer) 
	{
		this.splashView = splashView;
		this.menuView = menuView;
		this.slideViewer = slideViewer;
	}
	
	public function showSplashScreen( event:AppEvent ):Void
	{
		splashView.show();
		menuView.hide();
		slideViewer.hide();
	}
	
	public function showMenuScreen( event:AppEvent ):Void
	{
		splashView.hide();
		menuView.show();
		slideViewer.hide();
	}
	
	public function showSlides( event:AppEvent ):Void
	{
		splashView.hide();
		menuView.hide();
		slideViewer.show();
	}
}