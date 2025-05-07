// Abstract Class
abstract class Hotel {
  void bookRoom();               // abstract method Declaration
  void makePayment(double amount); // abstract method Declaration

  void printReceipt(String customerName) {
    print("🧾 Booking confirmed for $customerName. Enjoy your stay!");
  }
}

// Budget Hotel
class BudgetHotel extends Hotel {
  @override
  void bookRoom() {
    print("✅ Room booked in Budget Hotel (AC/Non-AC, Basic amenities).");
  }

  @override
  void makePayment(double amount) {
    print("💰 Paid ₹$amount via UPI for Budget Hotel.");
  }
}

// Luxury Hotel 
class LuxuryHotel extends Hotel {
  @override
  void bookRoom() {
    print("✅ Room booked in Luxury Hotel (Suite, Pool, Spa, Breakfast included).");
  }

  @override
  void makePayment(double amount) {
    print("Paid ₹$amount via Credit Card for Luxury Hotel.");
  }
}

// Main function
void main() {
  Hotel customer1 = new BudgetHotel();

  print(" Customer 1:");

  customer1.bookRoom();
  customer1.makePayment(1500);
  customer1.printReceipt("Omkar");
}
