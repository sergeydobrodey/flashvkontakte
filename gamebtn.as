package  {
	import fl.controls.Button;
	import flash.geom.ColorTransform;

	
	public class gamebtn extends Button {

		public function gamebtn(lab:String,posX:int,posY:int) {
			this.x= posX;
			this.y=posY;
			this.width = 50;
			this.height = 50;
			this.label=lab;			
			/*var PersonalTransform:ColorTransform = new ColorTransform();
			PersonalTransform.color = 0x00FF66;
						*/
			//this.transform.colorTransform= PersonalTransform;
		
			
		}

	}
	
}
