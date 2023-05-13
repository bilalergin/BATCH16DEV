public class MathPractice {  //* 6 nisan ödevi
    public decimal practiceOne(Decimal kenar1, Decimal kenar2) {
        Decimal cevre = 2 * (kenar1 + kenar2);
        return cevre;

    }

    //9 Nisan Ödevi
    public decimal practiceTwo(decimal boy, decimal kilo){
        decimal kitleEndeksi = kilo / (boy * boy);
        return kitleEndeksi;

    }

    public Decimal practiceFour(Decimal total){
        Decimal bonus;
        if(total <= 0){
            System.debug('Hatalı bir değer girdiniz.');
        }else if(total < 50){
            System.debug('Bonus kazanamadınız.');
        }else if(total < 200){
            bonus = 10;
            System.debug(total + ' dolar tutarındaki alışveriş karşılığı '+ bonus + ' dolar bonus kazandınız.');
        }else if(total < 500){
            bonus = 30;
            System.debug(total + ' dolar tutarındaki alışveriş karşılığı '+ bonus + ' dolar bonus kazandınız.');
        }else{
            bonus = 50;
            System.debug(total + ' dolar tutarındaki alışveriş karşılığı '+ bonus + ' dolar bonus kazandınız.');
        }    

         
        return bonus;


    }

    public Decimal practiceFive( Integer adet, String urun){
        Decimal toplam;
        switch on urun {
            when 'EKMEK' {
                toplam = 2.00 * adet;
                System.debug('Almış olduğunuz ' + adet + ' adet ' + urun + ' tutarı ' + toplam + ' dolardır.');
            }when 'SİMİT'{
                toplam = 3.00 * adet;
                System.debug('Almış olduğunuz ' + adet + ' adet ' + urun + ' tutarı ' + toplam + ' dolardır.');

            }when 'KEK'{
                toplam = 4.00 * adet;
                System.debug('Almış olduğunuz ' + adet + ' adet ' + urun + ' tutarı ' + toplam + ' dolardır.');

            }when else {
                System.debug('Siparişiniz stoklarımızda bulunmamaktadır');
            }
        }
        return toplam; 
    }

    

    
}