public class MyCity {
    public void city() {
        String str = 'I am a salesforce Developer.';
        Boolean check = str.contains('force');
        System.debug(check);
        Integer uzunluk = str.length();
        System.debug(uzunluk);
        String cevir = str.toUpperCase();
        System.debug(cevir);

    }

    //! 2. HAfta ödevi çözümü 
    //* 6 nisan ödevi

    public void dateMethod(){
        Date bugun = Date.today();
        System.debug('Bugünün tarihi ' + bugun);
        Datetime suAnkiSaatveTarih = Datetime.newInstance(2023, 04, 06, 12, 33, 45);
        System.debug('Bugünün tarihi ve saati ' + suAnkiSaatveTarih);
        Datetime elliSonrasi = suAnkiSaatveTarih.addHours(50);
        System.debug('50 saat sonrası ' + elliSonrasi);

    }
     public void cityInformation(){
        Date kTarihi = Date.newInstance(1923, 10, 29);
        System.debug('Türkiye\'nin kuruluş tarihi ' + kTarihi);
        time gunDogumu = time.newInstance(06, 39, 00, 000);
        System.debug('Gün doğum zamanı: ' + gunDogumu);
        Date today = Date.today();
        Date oncesi = today.addMonths(-36);
        system.debug('Bugünün tarihi: ' + today + 've 36 ay öncesinin tarihi:' + oncesi);
        //2.yol
        system.debug('Bugünün tarihi: ' + Datetime.now() + 've 36 ay öncesinin tarihi:' + (Datetime.now().addMonths(-36)));
     }


     public void pirt(Integer sayi, String message) {
        for (Integer i = 1; i <=sayi; i++) {
            System.debug(sayi +' ' + message);
            
        }
     }
     
     
}