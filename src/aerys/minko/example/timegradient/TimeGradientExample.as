package aerys.minko.example.timegradient
{
	import aerys.minko.render.effect.SinglePassRenderingEffect;
	import aerys.minko.render.shader.ActionScriptShader;
	import aerys.minko.scene.node.group.EffectGroup;
	import aerys.minko.scene.node.mesh.primitive.TeapotMesh;
	
	import flash.events.Event;
	import flash.utils.getTimer;

	public class TimeGradientExample extends MinkoExampleApplication
	{
		private var _shader	: ActionScriptShader	= new TimeGradientShader(0xff0000, 0x0000ff, 0, 3);
		
		override protected function initializeScene():void
		{
			camera.lookAt.y = 1.3;
			camera.distance = 10.;
			
			var teapot : EffectGroup = new EffectGroup(
				new SinglePassRenderingEffect(_shader),
				new TeapotMesh()
			);
			
			scene.addChild(teapot);
		}
	}
}