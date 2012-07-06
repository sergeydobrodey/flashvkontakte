package 
{
	import flash.display.*;
	import flash.events.MouseEvent;
	import gamebtn;
	import fl.controls.Button;

	public class Main extends Sprite
	{
		var gamefield:Array = new Array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0);
		var points_at_right_place:int = 0;
		function randomize(argArray : Array)
		{
			if (! argArray)
			{
				return null;
			}
			gamefield = argArray.slice();
			startRandomize();

			//return  gamefield;
		}

		// private 
		function startRandomize():void
		{
			var len:uint = gamefield.length - 1;
			while (len--)
			{
				var n : int = Math.random()*(len + 1);
				swap(len, n);
			}

		}
		public function Main()
		{
			randomize(gamefield);
			createUI();
			check_points();
			trace(points_at_right_place);
		}

		function createUI():void
		{
			var button_limit:int = 15;
			var button_number:int = 0;
			for (var j:int = 100; j <= 250; j +=  50)
			{
				for (var i:int = 175; i <= 325; i +=  50)
				{

					if (button_number < button_limit)
					{
						var btn = new gamebtn(gamefield[button_number].toString(),i,j);
						btn.addEventListener(MouseEvent.CLICK,btn_Click);
						addChild(btn);
						button_number++;
					}
				}
			}
		}

		function check_points():void
		{
			for (var i:int=0; i<16; i++)
			{
				if (gamefield[i] == i + 1)
				{
					points_at_right_place++;
				}
			}
		}
		function btn_Click(event:MouseEvent):void
		{
			movebtn(event.target,gamefield.indexOf(int(event.target.label)));
			
			if (points_at_right_place==15) event.target.label = "hello kitty";

		}

		private function swap(x:uint,y:uint):void
		{
			var temp:* = gamefield[x];
			gamefield[x] = gamefield[y];
			gamefield[y] = temp;
		}
		function movebtn(theButton:Object,pos:int):void
		{
			//move right
			if (pos != 3 && pos != 7 && pos != 11 && pos != 15)
			{
				if (gamefield[pos + 1] == 0)
				{
					swap(pos + 1,pos);
					theButton.x +=  50;

				}
			}

			//move left
			if (pos != 0 && pos != 4 && pos != 8 && pos != 12)
			{
				if (gamefield[pos - 1] == 0)
				{
					swap(pos - 1,pos);
					theButton.x -=  50;
				}
			}//move up
			if (pos > 3)
			{
				if (gamefield[pos - 4] == 0)
				{
					swap(pos - 4,pos);
					theButton.y -=  50;
				}
			}//move down
			if (pos < 12)
			{
				if (gamefield[pos + 4] == 0)
				{
					swap(pos + 4,pos);
					theButton.y +=  50;
				}
			}
		}


	}


}