public class DecimalDateTimeAssignment {
    // Create a class DecimalDateTimeAssignment
    // 1.Create a method DecimalAssignmentMethod
    public void decimalAssignmentMethod() {
        // 2.Declare decimal d1=30.45658525 
        decimal d1=30.45658525;
        // 3.Consider only two decimal point (use setscale)
        Decimal dec = d1.setScale(2);
        System.debug('Decimal 2 is ' + dec);
        // 4.Convert decimal to string and assign to string “str1”
        String str1 = d1.toPlainString();
        System.debug('String ' + str1);
        // 5.Convert String to decimal d2
        Decimal d2 = Decimal.valueOf(str1);
        System.debug('Decimal ' + d2);

    }

    // 1.Create a method DateTimeAssignment 
    public void dateTimeAssignment(){
        // 2.Create new instance of date to print your date of birth 
        Date myBirthDate = Date.newInstance(1987, 04, 30);
        System.debug('My birthdate is ' + myBirthDate);
        // 3.Create new datetime instance with parameters (10,20,40,200)
        time newDatetime =Time.newInstance(10, 20, 40, 200);
        System.debug(newDatetime);


    }
}