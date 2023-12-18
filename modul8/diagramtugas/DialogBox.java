package diagramtugas;

public class DialogBox {
    private DataController dataController;

    public DialogBox(DataController dataController) {
        this.dataController = dataController;
    }

    public void showMessage(String message) {
        System.out.println("Dialog Box: " + message);
    }

    public void showInputPrompt() {
        System.out.print("Enter your input: ");
    }
}
