public class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = Date.newInstance(2023, 04, 07);
        Date varTodaysDate = Date.newInstance(2023, 04, 06);
        integer daysDiff = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug(daysDiff);

    }
    public void timeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 04, 07, 07, 00, 00);
        Datetime var10DaysDatetime = Datetime.newInstanceGmt(2023, 04, 16, 09, 00, 00);

        Datetime varDatetimeLong = Datetime.newInstance(12339874361L);
        System.debug(varDatetimeLong);

        Datetime add7Days = varTomorrowDatetime.addDays(7);
        System.debug('+7 seven days ' + add7Days);

        Datetime add10Days = var10DaysDatetime.addDays(10);
        System.debug('+10 ten days ' + add10Days);







    }
}