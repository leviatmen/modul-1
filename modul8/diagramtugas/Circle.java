package diagramtugas;

public class Circle extends Shape {
    private float radius;
    private Point center;

    public Circle(float radius, long centerX, long centerY) {
        this.radius = radius;
        this.center = new Point(centerX, centerY);
    }

    @Override
    public void draw() {
        System.out.println("Drawing a circle.");
    }

    @Override
    public void erase() {
        System.out.println("Erasing a circle.");
    }

    @Override
    public void move(long x, long y) {
        System.out.println("Moving the circle to (" + x + ", " + y + ").");
        center.setX(x);
        center.setY(y);
    }

    @Override
    public void resize(double factor) {
        this.radius *= factor;
        System.out.println("Resizing the circle with factor " + factor + ".");
    }

    public double area() {
        return Math.PI * Math.pow(radius, 2);
    }

    public double circum() {
        return 2 * Math.PI * radius;
    }

    // Getter method for center
    public Point getCenter() {
        return center;
    }

    // Setter method for center
    public void setCenter(Point center) {
        this.center = center;
    }

    public void setRadius(float radius) {
        this.radius = radius;
    }
}
