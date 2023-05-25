@istest
public class ParametreliMetotlar16TrTest {
    @istest
    private static void printWelcomeTest() {
        ParametreliMetotlar16Tr pm = new ParametreliMetotlar16Tr();
        pm.printWelcome();
    }
    @istest
    private static void welcomePersonTest() {
        ParametreliMetotlar16Tr pm = new ParametreliMetotlar16Tr();
        pm.welcomePerson('John');
    }
    @istest
    private static void toplamaTest() {
        ParametreliMetotlar16Tr pm = new ParametreliMetotlar16Tr();
        integer tplm = pm.toplama(11, 22);
        assert.areEqual(33, tplm);//! eğer methodumuz birşey return ediyor veya orgda dml işlemi yapıyorsa bu işlemleri check etmek için assert kullanıyoruz
        // assert.isNotNull(tplm);
        // assert.isTrue(tplm == 33);
    }
    @istest
    private static void artikYilTest() {
        ParametreliMetotlar16Tr pm = new ParametreliMetotlar16Tr();
        date dt = date.newInstance(2023, 5, 24);
        boolean result = pm.artikYil(dt);
        assert.isFalse(result);
    }
    @istest
    private static void uzunlukTest() {
        ParametreliMetotlar16Tr pm = new ParametreliMetotlar16Tr();
        integer uznlk = pm.uzunluk('merhaba');
        assert.areEqual(7, uznlk);
        //assert.isNotNull(result);//! eğer çok uzun metin assert edeceksek bu son iki assertü kullanabiliriz.
       //assert.isTrue(result>0);
    }
}//! unit test--->kod parçalarının testini yapmak end to end test---> aplicationun ve sistemin tamamının birlikte çalışmasını test eder 