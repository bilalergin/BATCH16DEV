public class BankAccountProgram {
    //! 25.04.2023
    public void createBankAccounts(){
        BankAccount b1 = new BankAccount('65432111', 'John', 8800, 'Citi bank');
        b1.printDetails();//bankaccount classı buraya çağırdık

        BankAccount b2 = new BankAccount();
        b2.accountNumber = '777888444';
        b2.printDetails();
    }
}