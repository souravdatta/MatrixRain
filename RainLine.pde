import java.util.List;
import java.util.ArrayList;


public class RainLine {
  private int x;
  private int y;
  private int len;
  private int speed;
  private boolean showing = true;
  private final String buffer = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  
  public RainLine(int x) {
    this.x = x;
    reset(true);
  }
  
  public void update() {
    if ((this.y - this.len / 2 * 10) > height) reset(false);
    y += speed;
  }
  
  public void reset(boolean randY) {
    if (randY)
      this.y = (int)random(20, 100);
    else
      this.y = 0;
    this.speed = (int)random(4, 20);
    this.len = (int)random(100, 400);
    if ((int)random(1, 100) >= 70) {
      this.showing = true;
    }
    else {
      this.showing = false;
    }
  }
  
  public void draw() {
    if (this.showing) {
      fill(255);
      textSize(18);
      text(buffer.charAt((int)random(0, buffer.length())), x, y);
      fill(10, 255, 10);
      textSize(16);
      for (int i = 1; i < this.len; i += 10) {
        text(buffer.charAt((int)random(0, buffer.length())), x, y - i);
      }
    }
  }
}
