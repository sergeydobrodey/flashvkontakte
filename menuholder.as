﻿package  {
	
	import flash.display.MovieClip;	
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.sensors.Accelerometer;
	
	public class menuholder extends MovieClip {		
		
		public function menuholder() {
			// constructor code		
			this.name = "menu";
			var newgame = new Button();
			newgame.x=175;
			newgame.y=100;
			newgame.height=90;
			newgame.width=200;
			newgame.label= "Start new game";
			newgame.addEventListener(MouseEvent.CLICK,new_Click);
			addChild(newgame);			
			
			var about = new Button();
			about.x = 175;
			about.y=200;
			about.height=90;
			about.width=200;
			about.label = "About & Help";
			about.addEventListener(MouseEvent.CLICK,about_Click);
			addChild(about);
			
		}
	     function new_Click(event:MouseEvent):void {
			var game = new gameprocess();
			//var link =  parent.parent;
			//parent.parent.removeChild(parent.parent.getChildByName("game"));
			parent.addChild(game);
			//link.addChild(game);			
			//trace(parent.parent.getChildByName("gogogo"));
			parent.removeChild(this);					
			
			//addChild(game);
			//parent.Main();			
		 }
		 function about_Click(event:MouseEvent):void {
			 
		 }
	}
	
}
