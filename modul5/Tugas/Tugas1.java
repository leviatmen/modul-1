package Tugas;

import java.util.InputMismatchException; 
import java.util.Scanner;

public class Tugas1 {
    public static int pembagian(int bil, int pbg) throws ArithmeticException{
        return bil / pbg;

     }
     public static void main(String[] args) 
         { Scanner scanner = new Scanner(System.in); 
         boolean continueLoop = true;

         do{
             try {
                 System.out.print("Masukkan Nilai Pembilang : "); int numerator = scanner.nextInt();   
                 System.out.print("Masukkan Nilai Penyebut(Pembagi) : ");
                 int denominator = scanner.nextInt();
                 int result = pembagian(numerator, denominator);
                 System.out.printf("%nHasil : %d / %d = %d%n", numerator, denominator, result);

                 continueLoop = false;

             }   catch (InputMismatchException inputMismatchException) {
                 //TODO: handle exception
                 System.err.printf("%nException	: %s%n", inputMismatchException);
                 scanner.nextLine();
                 System.out.printf("Anda harus memasukan nilai bertipe integer. Coba lagi.%n%n");
              }
              catch (ArithmeticException arithmeticException){
              System.err.printf("%nException : %s%n", arithmeticException); 
              System.out.printf("Nol adalah penyebut yang tidak valid, Coba lagi.%n%n");
            }
       } while(continueLoop);
   }
}
