package diagramtugas;

public class Polygon extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a polygon.");
    }

    @Override
    public void erase() {
        System.out.println("Erasing a polygon.");
    }

    @Override
    public void move(long x, long y) {
        System.out.println("Moving the polygon to (" + x + ", " + y + ").");
    }

    @Override
    public void resize(double factor) {
        // Implementasi untuk merubah ukuran polygon
        System.out.println("Resizing the polygon with factor " + factor + ".");
    }
}
