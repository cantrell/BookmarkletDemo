package
{
	import flash.html.HTMLHost;
	import flash.html.HTMLLoader;
	import flash.html.HTMLWindowCreateOptions;
	
	import spark.components.Window;
	
	public class CustomHost extends HTMLHost
	{
		public override function createWindow(options:HTMLWindowCreateOptions):HTMLLoader
		{
			var win:Window = new Window();
			win.width = options.width;
			win.height = options.height;
			var browser:Browser = new Browser();
			browser.hideBookmarklets();
			browser.percentHeight = 100;
			browser.percentWidth = 100;
			win.addElement(browser);
			win.open(true);
			return browser.html.htmlLoader;
		}
	}
}