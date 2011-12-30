package aerys.minko.example.gradient
{
	import aerys.minko.render.shader.ActionScriptShader;
	import aerys.minko.render.shader.SValue;
	
	public class GradientShader extends ActionScriptShader
	{
		private var _color1	: uint	= 0;
		private var _color2	: uint	= 0;
		
		public function GradientShader(color1 : uint, color2 : uint)
		{
			super();
			
			_color1 = color1;
			_color2 = color2;
		}
		
		override protected function getOutputPosition():SValue
		{
			return vertexClipspacePosition;
		}
		
		override protected function getOutputColor():SValue
		{
			var pos : SValue = interpolate(vertexPosition);
			var c : SValue = absolute(pos.y).scaleBy(2.);
			
			return mix(rgba(_color1), rgba(_color2), c);
		}
	}
}