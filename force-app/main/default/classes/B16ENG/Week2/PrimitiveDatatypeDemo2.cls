public class PrimitiveDatatypeDemo2 {
    //03.04.2023
    //1. new DATE
    public void printNewDate(){
        system.debug('create new date instance');
        
        //datatype          newInstance(year, month, day)
        date    newDate = date.newInstance(1987, 4, 30);
        system.debug('newDate is ' + newDate);

        date newDate2 = date.newInstance(2023, 4, 4);
        system.debug('newDate2 is ' + newDate2);

        date todayDate = date.today();
        //today's
            // escape character -> \ -> it will ignore the next character
        system.debug('today\'s date is ' + todayDate);
    }
    public void printNewTime(){
        //newinstance(hour, minute, second, millisecond)
        time myTime1 = time.newInstance(10, 15, 20, 500);
        system.debug('mytime1 ' + myTime1);

        time myTime2 = time.newInstance(25, 80, 30, 100);//todo 25 yazınca 24'ten sonra bir saat ekler ve saat 1 olur.80 ekleyince 1 saat 20 dk daha ekler ve 2.20 olur.
        system.debug('myTime 2 ==> ' + myTime2);
    }
    public void printNewDateTime(){
        //method name is 'newInstance'
            //different parameters
            //#(how many) parameters // parantez içindeki her bir değer bir parametre oluyor. 1992,6,3 -->3 parametre var
        date newDate = date.newInstance(1992, 6, 3);
        time myTime1 = time.newInstance(10, 15, 20, 500);
        
        //1. create new DATETIME using Date and Time
        Datetime dt1 = datetime.newInstance(newDate, myTime1);
        system.debug(dt1);

        //2. create new DATETIME using  year, month, day
        datetime dt2 = Datetime.newInstance(2020, 5, 12); //time will be midnight. datetime ı boş bırakırsak 00.00 gelir.
        //* newInstance > creates new datetime midnight as per user's timezone.
        system.debug('dt2 is ' + dt2);//* burası gmt bize göre (ingiltere) saatini gösterir ve orgda onu görürüz.

         //3. create new DATETIME using year, month, day, hour, minute, second
         datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);//will create as per user timezone.
         system.debug('dt3 ' + dt3);//print as per gmt.bize göre ingiltere saatini gösterir. kodda yazan tarihe göre sounç veriri. saatlerin ileri geri durumlarını dikkate alır.

         //6. current datetime
        datetime dt6 = Datetime.now();
        system.debug('current datetime : ' + dt6);//* bize göre ingiltere saatini gösterir.

        //4. new datetime using long variable
        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 is ' + dt4);//which datetime it will print?

        // external application will send long number for datetime
        long longtime = 9198784512113l;
        datetime dt44 = datetime.newInstance(longtime);
        System.debug('dt44 is ' + dt44);

        // 5. create new datetime as GMT
        datetime dt5 = datetime.newInstanceGmt(2023, 4, 1, 15, 15, 30);//this will create new datetime as per GMT
        System.debug('dt5 is ' + dt5);//? yazdığımız saat tarih neyse onu gösterir.
    }

}