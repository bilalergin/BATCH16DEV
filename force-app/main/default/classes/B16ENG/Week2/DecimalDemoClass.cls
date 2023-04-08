public class DecimalDemoClass {
    //04.04.2023
    public void practice1(){
        decimal myMoney = 554.89456123;

        //1. create another decimal till 2 digits after decimal points
        decimal myMoney2 = myMoney.setScale(2);
        system.debug('myMoney 2 --> ' + myMoney2);

        string myMoney2Str = myMoney2.toPlainString();
        system.debug(myMoney2Str);

        decimal myMoney3 = decimal.valueOf(myMoney2Str);//? Bu metotla hem decimala hem de stringe çevirebiliriz.
        system.debug(myMoney3);
    }
    public void practice2(){
        decimal d1 = 45.5125487;
        //setScale method
            //> return new decimal
        //1st way (assign to another variable)
        decimal d2 = d1.setScale(3);//! parantez içindeki sayı kadar basamağı yuvarlar
        system.debug('d2 is ' + d2);//! 5 ve üzeri ise yukarı değilse aşağı yuvarlar

        //2nd is directly use it and print it
        system.debug('setscale 2 --> ' + d1.setScale(2));

        string s1 = '33.2564';
        decimal s1Dec = decimal.valueOf(s1);
        // decimal s1Dec = decimal.valueOf(s1) + 1; //! Buraya +1 yazınca önce +99 u yapıyor sonra +1 koyuyor.
        system.debug(s1+99);    //33.256499
        system.debug(s1Dec+99); //132.2564

        
        string s2 = s1Dec.toPlainString();
        system.debug(s2+11);
    }
}