package openclose;

public class StudentCinema extends Cinema {
    public StudentCinema(double price){
        this.price = price;
    }
    @Override
    Double calculateAdminFee(){
        return this.price * 2/100;
    }

}
