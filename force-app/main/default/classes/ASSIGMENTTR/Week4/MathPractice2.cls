public class MathPractice2 {
    public Decimal practiceSix(Decimal uzunKenar, Decimal kisaKenar, String hesap ){
        Decimal sonuc = 0;
        switch on hesap{
            when 'alan'{
                sonuc = uzunKenar*kisaKenar;
            }when 'cevre'{
                sonuc = 2*(uzunKenar+kisaKenar);

            }when else {
                system.debug('Lütfen geçerli bir işlem türü giriniz!');
            }
        }
        return Math.round(sonuc);
    }
    public string practiceSeven(Decimal boy, Decimal kilo){
        Decimal vki = (kilo/ (boy*boy)).setScale(1);
        string sonuc = '';
        if (vki > 0 && vki <= 18.4) {
            sonuc = 'Zayıf';
            
        }else if (vki >= 18.4 && vki <= 24.9) {
            sonuc = 'Normal';
                        
        }else if (vki >= 24.9 && vki <= 29.9) {
            sonuc= 'Kilolu';            
        }else {
            sonuc = 'Hatalı veri girdiniz.';
        }
        System.debug(sonuc);

        return sonuc;

    }
    public integer practiceEight(Integer a, Integer b){
        Integer toplam = 0;
        if(a==b){
        toplam = a+b;
        }else if(a<b){
            for(Integer i = a; i <= b; i++){
                toplam +=i;
            }
        }else{
            for(Integer i = b; i <= a; i++){
                toplam +=i;
            }
        }    
        return toplam;
    }
}