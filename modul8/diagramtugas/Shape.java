package diagramtugas;

public abstract class Shape {
    public abstract void draw();

    public abstract void erase();

    public abstract void move(long x, long y);

    public abstract void resize(double factor);
}