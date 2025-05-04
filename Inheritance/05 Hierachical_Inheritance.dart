import 'dart:io';

class BankAccount {     ///parent class
  String? accountHolder;      ///variable for name
  double balance = 0;         ///variable for balance

  void getAccountDetails() {      ///   method
    stdout.writeln("Enter Account Holder Name: ");
    accountHolder = stdin.readLineSync();

    while (true) {       /// Negative value handle loop
      stdout.writeln("Enter Account Balance : ");
      double? temp = double.tryParse(stdin.readLineSync() ?? '');   ///temp variable for temporary value

      if (temp != null && temp >= 0) {      /// Negative value handle
        balance = temp;
        break;
      } else {
        stdout.writeln(" Please Enter a valid Account Balance.");
      }
    }
  }

  void showDetails() {    ///   method
    stdout.writeln("Account Holder: $accountHolder,  Balance: $balance");
  }
}

class SavingsAccount extends BankAccount {              /// Child class
  
  void applyInterest() {       /// Method   
    double interest = (balance * 7) / 100;          ///variable interest adding
    balance += interest;
    stdout.writeln("Interest Added (7%): $interest");
    showDetails();      /// Parent method calling
  }

}

class CurrentAccount extends BankAccount {         /// Child class
  
  void withdrawAmount() {               ///method
    double amt;                       /// variable for amount withdraw

    while (true) {                  /// negative amount handle loop
      stdout.write("Enter withdrawal amount: ");
      amt = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (amt >= 0) break;              ///Single line execution 
      stdout.writeln(" Please enter a valid non-negative amount.");
    }

    if (amt <= balance) {
      balance -= amt;
      stdout.writeln("$amt withdrawn Successfully.");
    } else {
      stdout.writeln(" Insufficient Balance");
    }

    showDetails();
  }
}

class FixedDepositAccount extends BankAccount {        /// Child class
  
  void calculateMaturity(double interest, int years) {      ///method
    if (interest < 0 || years <= 0) {
      stdout.writeln("Invalid rate or years.");
      return;
    }

    double maturityAmount = balance * (1 + (interest / 100) * years);       /// variable for maturity amount calculation and formula
    stdout.writeln("Maturity Amount after $years years at $interest%:Your Total Amount is $maturityAmount");
  }
}


void main() {
 
  stdout.writeln("\n Savings Account:");
  SavingsAccount saving = SavingsAccount();    /// Object Savings Account
  saving.getAccountDetails();        ///Method Calling
  saving.applyInterest();        ///Method Calling


  stdout.writeln("\n Current Account:");
  CurrentAccount current = CurrentAccount();     /// Object Current  Account
  current.getAccountDetails();         ///Method Calling
  current.withdrawAmount();          ///Method Calling


  stdout.writeln("\n Fixed Deposit Account:");
  FixedDepositAccount fixed = FixedDepositAccount();      /// Fixed Deposit Account
  fixed.getAccountDetails();         ///Method Calling
  fixed.calculateMaturity(6.5, 5);        ///Method Calling with parameters (interest  and  years)
}
