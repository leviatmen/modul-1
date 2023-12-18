package diagramtugas;

public class DrawingContext {
    private ConsoleWindow consoleWindow;
    private DialogBox dialogBox;

    public DrawingContext(ConsoleWindow consoleWindow, DialogBox dialogBox) {
        this.consoleWindow = consoleWindow;
        this.dialogBox = dialogBox;
    }

    public void setPoint(int x, int y, char value) {
        // Implementation to set a point in the drawing context
    }

    public void clearScreen() {
        // Implementation to clear the drawing context
    }

    public int getVerticalSize() {
        // Implementation to get vertical size
        return 0;
    }

    public int getHorizontalSize() {
        // Implementation to get horizontal size
        return 0;
    }
}