package diagramtugas;

// Rectangle.java
public class Rectangle extends Shape {
    private long length;
    private long width;

    public Rectangle(long length, long width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public void draw() {
        System.out.println("Drawing a rectangle.");
    }

    @Override
    public void erase() {
        System.out.println("Erasing a rectangle.");
    }

    @Override
    public void move(long x, long y) {
        System.out.println("Moving the rectangle to (" + x + ", " + y + ").");
    }

    @Override
    public void resize(double factor) {
        this.length *= factor;
        this.width *= factor;
        System.out.println("Resizing the rectangle with factor " + factor + ".");
    }
}
