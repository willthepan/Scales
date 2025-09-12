void setup() {
  size(800, 600);
  stroke(50);
  strokeWeight(2);

  int sizeArc = 50;
  int shift = 20;
  int inner = sizeArc * 2 / 3;

  int rows = height / 20 + 4;
  int cols = width / 40 + 4;

  for (int row = rows; row >= 0; row = row - 1) {
    for (int col = 0; col < cols; col = col + 1) {
      int x = col * 40;
      int y = row * 20;

      if (row % 2 == 1) {
        x = x + shift;
      }

      int r = 200 + (int)(Math.random() * 56);
      int g = 180 + (int)(Math.random() * 50);
      int b = 150 + (int)(Math.random() * 40);
      fill(r, g, b);
      arc(x, y, sizeArc, sizeArc, PI, TWO_PI, PIE);

      int r2 = 200 + (int)(Math.random() * 56);
      int g2 = 180 + (int)(Math.random() * 50);
      int b2 = 150 + (int)(Math.random() * 40);
      fill(r2, g2, b2);
      arc(x, y, inner, inner, PI, TWO_PI, PIE);
    }
  }
}
