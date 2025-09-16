/*Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.*/

class BankAccount {
  double _balance;
  BankAccount(this._balance);
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else
      print("invalid balance");
  }

  double get balance => _balance;
}

void main() {
  BankAccount acc1 = BankAccount(0);
  acc1.balance = 100;
  print('Balance: ${acc1.balance}');
  acc1.balance = -500;
}
