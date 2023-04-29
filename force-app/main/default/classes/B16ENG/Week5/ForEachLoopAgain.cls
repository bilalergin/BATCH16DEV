public class ForEachLoopAgain {
    //! 28.04.2023
    public static void iterateList1() {
         list<integer> l1 = new list<integer>{1,10,15,20};
 
         for (integer eachNum : l1) {
             system.debug(eachNum);//l1 deki sayıları alt alta yazdırır
         }
    }
 
    public static void iterateList2() {
         list<integer> l1 = new list<integer>{1,10,15,20};
 
         integer sum = 0;
         string s = '';
         for (integer eachNum : l1) {
             sum += eachNum;//l1 deki sayıların toplamını verir.(0+1),(1+10),(11+15),(26+20)
             s += eachNum + ' || ';//l1 deki sayıları yanyana yazdırır.
         }
        
         system.debug(sum);
         system.debug(s);
    }
    public static void printEachCountry() {
        set<string> allCountry = new set<string>{
            'Brazil',
            'Mexico',
            'Phillipines',
            'United States',
            'United kingdom',
            'Portugal'
        };

        set<string> c2 = new set<string>();
        for (string eachCountry : allCountry) {
            //loopun içinde allCountry i güncelleyemeyiz. Dışında güncelleyebiliriz.
            // allCountry.add('Trukey');//böyle güncelleme yapamayız. deployda hata vermese de ekleme yapmaz
            system.debug(eachCountry);
            integer len = eachCountry.length();
            if (len >= 8) {
                c2.add(eachCountry);
            }
        }
        system.debug('c2 is ' + c2);//bu debugı for dışında yazdığımız için konsolda tek satırda yazdırdı
   }
}
 