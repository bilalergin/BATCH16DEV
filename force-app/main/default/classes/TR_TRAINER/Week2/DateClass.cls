public class DateClass {
    public void tarihOlusturma() {
        Date dt1 = Date.newInstance(2022, 11, 21);
        System.debug('dat1 => ' + dt1);
        Integer yil = 2023;
        Integer ay = 7;
        Integer gun = 26;
        Date dt2 = Date.newInstance(yil, ay, gun);
        System.debug('dat2 => ' + dt2);
        
    }

    //!     ? yılının ? ayının ? günündeyiz. Yeni yıla ? gün var?
    public void dateMessage() {
        Date dateToday = Date.today(); //! sonuç GMT'ye göre geliyor.Buradaki bugün GMT'deki bugün
        
        //1. aşama tarih içinden yılı çekelim
        Integer buYil = dateToday.year();

        //2. aşama tarih içinden ayı çekelim
        Integer buAy = dateToday.month();

        //3. aşama tarih içinden günü çekelim
        Integer buGun = dateToday.day();

        //4. aşama yeni yılın tarihi ile bugün arasınadaki gün sayısını buluruz
        Date yeniYil = Date.newInstance(2023, 12, 31);
        Integer kalanGunSayisi = dateToday.daysBetween(yeniYil);
                
        //5. aşama tüm bu verileri string bir cümlede birleştirip systemdebug ile yazdırırız
        String cumle = buYil + ' yilinin ' + buAy + ' ayinin ' + buGun + ' gunundeyiz. Yeni yila ' + kalanGunSayisi + ' gun var...';
        System.debug(cumle);

        //4. ve 5. aşamayı 2. bir yolla yapalım. 
        //dayOfYear metodu yılın kaçıncı gününde olduğumuzu söylüyor
        
        Integer kacinciGun = dateToday.dayOfYear();
        Integer kalanGunSayisi2 = 365 - kacinciGun;
        String cumle2 = buYil + ' yilinin ' + buAy + ' ayinin ' + buGun + ' gunundeyiz. Yeni yila ' + kalanGunSayisi + ' gun var...';
        System.debug(cumle2);


        
    }
    
}