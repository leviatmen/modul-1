package diagramtugas;

public class Window {
    private Event event;
    private Shape shape;
    private DrawingContext drawingContext;

    public Window(Event event, Shape shape, DrawingContext drawingContext) {
        this.event = event;
        this.shape = shape;
        this.drawingContext = drawingContext;
    }

    public void open() {
        System.out.println("Window is now open.");
    }

    public void close() {
        System.out.println("Window is now closed.");
    }

    public void move(int x, int y) {
        System.out.println("Window moved to (" + x + ", " + y + ").");
    }

    public void display() {
        System.out.println("Displaying window content.");
    }

    public void handleEvent() {
        System.out.println("Handling event: " + event.getEventName());
    }
}
