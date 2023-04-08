public class Batch16Simple {
    public void hosgeldin (){
        system.debug('Hoşgeldin');
    }
    public void fullName(){
        String isim= 'Bilal';
        System.debug(isim);
        String soyad='Ergin';
        System.debug(soyad);
        //String fullName = 'Bilal Ergin';
        String fullName = isim + ' '+ soyad;
        System.debug(fullName);
    }
}