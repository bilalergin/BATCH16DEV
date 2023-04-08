public class StringMetotlar16 {
    /* string str='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. '; //String methodları kullanarak str nin değerini-->
    'Salesforce ogreneceğim ve developer olacağim' şekline çevirin.*/ 
    //*String metotlar link 
    //https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm */
    
    //! 1 Nisan 2023 dersi

    public void cumleDuzenle (){
        string cumle='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
        System.debug(cumle);
        
        //todo 1.asama cumlenin sagindaki ve solundaki bosluklari alalim..
        String cumle2 = cumle.trim();// 'sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM.'
        System.debug(cumle2);
        
        //todo //2. asamada tum cumleyi kucuk harfe cevirelim..
        String cumle3 = cumle2.toLowerCase();// 'salesforce ogreneceğim ve developerxyz1 olacagim.'
        System.debug(cumle3);
        
        //todo //3. asamada cumlenin ilk harfini buyuk yapalim..

        String cumle4 = cumle3.capitalize();// 'Salesforce ogreneceğim ve developerxyz1 olacagim.'
        System.debug(cumle4);

        //todo //4. asamada xYz1 fazlaligini silelim.
        String cumle5= cumle4.remove('xyz1');// 'Salesforce ogreneceğim ve developer olacagim.'
        System.debug(cumle5);

        //todo cumle5'in son kelimesini ,olacagim., alıp yazdırabilir miyiz?
        String text = cumle5.substringAfterLast(' ');// sonboşluktan sonrasını alır.
        System.debug(text);

    }

    //! https://abcde-12b-dev-ed.develop.lightning.force.com/lightning/r/Account/0018e00000AcPMHAA3/view
    //! url'nin içinden id'yi çekelim

    //todo substring stringin içinden bir parça al demek.
    
    public void selectId() {
        //Yollar
        // 1. Id'nin ilk karakteri 0 sayısının numarasını bulup o indexten itibaren 18 karakteri alabilirz.
        String accUrl = 'https://abcde-12b-dev-ed.develop.lightning.force.com/lightning/r/Account/0018e00000AcPMHAA3/view';
        integer indexNo = accUrl.indexOf('0'); //? indexOf içine yazdığımız karakteri ilk bulduğu yeri baz alıyor.
        String accId = accUrl.substring(indexNo, indexNo + 18);
        System.debug('Record ID: ' + accId);

        // 2. /view i silip substringAfter metodu ile son / tan sonraki id yi alabilriz.
        string accUrl2 = accUrl.remove('/view');
        System.debug(accUrl2);
        string accId2 = accUrl2.substringAfterLast('/');
        System.debug('Record ID: ' + accId2);

        // 3. /viewi silip, kalan url in length ni hesaplayip 18 eksigi olan indexten itibaren yazdirabilirim..
        String accUrl3 = accUrl.remove('/view');
        System.debug(accUrl3);
        integer lng =accUrl3.length();
        System.debug(lng);
        string accId3 = accUrl3.substring(lng-18);
        System.debug('Record ID: ' + accId3);
        


        // 4. lastIndex metoduyla son / in index numarsini bulurum. 18 eksigi ile bu index numarsi arasindaki id yi alirim..
        //todo 1.Yol
        Integer ilkIndex = accUrl.lastIndexOf('/')-18;
        System.debug(ilkIndex);
        Integer sonIndex = accUrl.lastIndexOf('/');
        System.debug(sonIndex);
        String accId4 = accUrl.substring(ilkIndex,sonIndex);
        System.debug('Record ID: ' + accId4);

        //todo 2.Yol        
        String url = 'https://abcde-12b-dev-ed.develop.lightning.force.com/lightning/r/Account/0018e00000AcPMHAA3/view';
        Integer startIndex = url.indexOf('/Account/') + 9;//! Accountun üzerine 9 ekleyip record idnin ilk sayısına ulaşıyoruz.
        //Integer startIndex = url.lastIndexOf('/Account/') + 9;
        System.debug(startIndex);
        Integer endIndex = url.indexOf('/view'); //! / işaretinden sonrasını almamış oluyoruz.
        //Integer endIndex = url.lastIndexOf('/');
        System.debug(endIndex);
        String recordId = url.substring(startIndex, endIndex);
        System.debug('Record ID: ' + recordId);

    }
}