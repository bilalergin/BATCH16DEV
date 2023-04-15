public class Ogrenci {
    //!08 ve 15.04.2023
    /*Ogrenci adında bir class
    first name
    last name
    okulu(private)
    sınıfı
    ana dili
    sanat/spor tercihi
    ingilizce notu
    matematik notu
    fen bilgisi notu*/
    public integer ogrenciSayisi=0;
    public static integer statikSayi=0;

    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public string language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer fenGrade;
    public integer mathGrade;

public Ogrenci() {
    ogrenciSayisi++;//her girildiğinde öğrenci sayısı bir artsın.statik olmayan metottan çağırıyoruz
    statikSayi++;//statik metottan çaığırıyoruz.
    System.debug('Yeni bir ogrenci kaydoldu.. Ogrenci sayimiz(non-statik) => '+ ogrenciSayisi);
    System.debug('Yeni bir ogrenci kaydoldu.. Ogrenci sayimiz(statik) => '+ statikSayi);
}

public Ogrenci(string firstName, string lastName, integer mathGrade){
    this();
    this.firstName = firstName;
    this.lastName = lastName;
    this.mathGrade = mathGrade;
}
}