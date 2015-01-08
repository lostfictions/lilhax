import luxe.Rectangle;
import luxe.Text;
import luxe.Vector;
import luxe.Color;
import luxe.Input;

import phoenix.geometry.CircleGeometry;
import phoenix.geometry.RingGeometry;
import phoenix.geometry.LineGeometry;
import phoenix.geometry.QuadGeometry;
import phoenix.geometry.RectangleGeometry;
import phoenix.Texture;

class Main extends luxe.Game
{
  var mouse = new Vector();
  // var line : LineGeometry;
  // var rect : RectangleGeometry;
  var box : QuadGeometry;

  override function ready()
  {
    /*
    line = Luxe.draw.line({
      p0 : new Vector( 0, Luxe.screen.h/2 ),
      p1 : new Vector( Luxe.screen.w, Luxe.screen.h/2 ),
      color : new Color(0.5,0.2,0.2,1)
    });
    rect = Luxe.draw.rectangle({
      x : 10, y : 10,
      w : Luxe.screen.w - 20,
      h : Luxe.screen.h - 20,
      color : new Color(0.4,0.4,0.4)
    });
    */

    // box = Luxe.draw.box({
    //   x : 40,
    //   y : 40,
    //   w : Luxe.screen.w - 80,
    //   h : Luxe.screen.h - 80,
    //   color : new Color(0.2, 0, 0, 0.5)
    // });
  }

  override function onmousemove(e : MouseEvent)
  {
    mouse.set_xy(e.x, e.y);
  }

  override function onmousedown(e : MouseEvent)
  {
    mouse.set_xy(e.x, e.y);
  }

  override function onmouseup(e : MouseEvent)
  {
    mouse.set_xy(e.x, e.y);
  }

  override function onkeyup(e : KeyEvent)
  {
    #if !js
    if(e.keycode == Key.escape) {
      Luxe.shutdown();
    }
    #end
  }

  override function onrender()
  {
    // js.Lib.debug();

    /*
    Luxe.draw.rectangle({
      //this line is important, as each frame it will create new geometry!
      immediate : true,
      x : mouse.x - 85,
      y : mouse.y,
      w : 170,
      h : 32,
      color : new Color(Math.random(), Math.random(), Math.random(), 0.5)
    });

    Luxe.draw.text({
      //this line is important, as each frame it will create new geometry!
      immediate : true,
      align : TextAlign.center,
      color : new Color(Math.random(), Math.random(), Math.random(), 0.5),
      pos : mouse,
      text : Std.string(luxe.utils.Maths.fixed(Luxe.dt, 6))
    });
    */
  }
}
