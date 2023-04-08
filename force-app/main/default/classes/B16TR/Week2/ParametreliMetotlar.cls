public class ParametreliMetotlar {
    public void printWelcome() {
        System.debug('hos geldiniz..');
        
    }
    public void wellcomePerson(string isim) {
        System.debug('Hos geldiniz ' + isim);
        
    }

    public Integer toplama(integer a, integer b) {
        Integer tplm = a + b;
        return tplm;
        
    }

    public Boolean artikYil(date myDate) { // artık yıl şubatın 29 çektiği yıl
        Integer myYear = myDate.year();
        Boolean sonuc = Date.isLeapYear(myYear);// sadece yılı koayabiliyoruz. Ay gün olursa hata veriyor.
        return sonuc; 
        
    }

    //* Parametre olarak bir string değer alan bir metot yazın.
    //* Bu metot parametre olarak gönderilen stringin karakter uzunluğunu return etsin.

    public Integer uzunluk(string text) {
       Integer karakterSayisi = text.length();
       return karakterSayisi;
        
    }
}