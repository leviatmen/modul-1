package openclose;

public class Main {
    public static void main(String[] args){
        StudentCinema studentCinema = new StudentCinema(100);
        Double adminFee = studentCinema.calculateAdminFee();
        System.out.println(adminFee);
    }
}
