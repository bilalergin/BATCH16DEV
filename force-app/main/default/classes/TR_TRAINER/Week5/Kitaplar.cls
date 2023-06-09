public class Kitaplar {
    //! ========= 26 Nisan ===========
    //Constructor
    //Class Variables
    //getter setter
    //static class variables
    //Non-static Metotlar
    //Static Metotlar
    //Collections

    String kitapAdi;
    String yazar;
    Decimal fiyat;
    static integer kitapSayisi=0;

    public Kitaplar() {
        kitapSayisi++;
        System.debug('Kutuphanemize yeni bir kitap eklendi.. Kitap sayimiz ' + kitapSayisi + ' oldu.');
    }

    public void setKitapAdi(string kitapAdi) {
        this.kitapAdi = kitapAdi;
    }
    public string getKitapAdi() {
        return this.kitapAdi;
    }

    public void setYazar(string yazar) {//setle değer atıyoruz.
        this.yazar = yazar;
    }
    public string getYazar() {//getle değeri görüyoruz
        return this.yazar;
    }

    public void setFiyat(decimal fiyat) {
        this.fiyat = fiyat;
    }
    public decimal getFiyat() {
        return this.fiyat;
    }

    public void details() {
        System.debug('Kitap Adi : ' + this.kitapAdi);
        System.debug('Yazar : ' + this.yazar);
        System.debug('Fiyat : ' + this.fiyat);
        System.debug('Toplam Kitap Sayisi : ' + kitapSayisi);
    }

    public static void toplamKitap() {//static metodun içinde non static değer kullanamayız. mesela this.yazar olmaz.
        System.debug('Toplam Kitap Sayisi : ' + kitapSayisi);
    }
}