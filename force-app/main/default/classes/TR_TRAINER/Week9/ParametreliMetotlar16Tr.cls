public class ParametreliMetotlar16Tr {
        //! 25.05.2023

    public void printWelcome() {
        System.debug('Hosgeldiniz..');
    }
    public void welcomePerson(string isim) {
        System.debug('Hosgeldin ' + isim);
    }
    public integer toplama(integer a, integer b) {
        integer tplm = a + b;
        return tplm;
    }
    public Boolean artikYil(date myDate) {
        integer myYear = myDate.year();
        Boolean sonuc = date.isLeapYear(myYear);
        return sonuc;
    }
    /*Parametre olarak bir string değer alan bir metot yazın.
     Bu metot parametre olarak gönderilen stringin karakter uzunluğunu return etsin. */
    public Integer uzunluk(string text) {
       Integer karakterSayisi = text.length();
       return karakterSayisi;
    }
    

}