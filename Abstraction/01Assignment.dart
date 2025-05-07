// Abstract Class
abstract class Hotel {
  void bookRoom();               // abstract method Declaration
  void makePayment(double amount); // abstract method Declaration

  void printReceipt(String customerName) {
    print(" Booking confirmed for $customerName. Enjoy your night");
  }
}
// Budget Hotel
class BOOK extends Hotel {
  @override
  void bookRoom() {     ///method 
    print(" Room Is booked.");
  }
  @override
  void makePayment(double amount) {   ///method
    print(" Paid ₹$amount via UPI for Budget Hotel.");
  }
}
// entry point function
void main() {
  BOOK customer1 = new BOOK();  

  print(" Customer Booking System :");

  ///method calling
  customer1.bookRoom();
  customer1.makePayment(1500);
  customer1.printReceipt("Omkar");
}
