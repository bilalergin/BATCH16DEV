public class PrimitiveDatatypeDemo {
    //public =>> data type
    //return type =>> void
    //method name =>> print1 (kodları çağırma metotları)

    public void print1(){
        String batchName = 'Batch 16';
        //Integer totalCandidates = '45';//int yazıyor ama değer string olduğu için çalışmaz. illegal assigment yazar.
        Integer totalCandidates = 45;//çalışır
        Boolean isAdminCompleted = true;//true,false,null çalışır.

        String batchDescription = batchName + ' has '+ totalCandidates + ' candidates. Admin completed '+ isAdminCompleted;
        System.debug(batchDescription);

    }

    public void print2(){
        Decimal d1 = 88987.65445;
        system.debug('decimal d1 ==> ' + d1);

        long l1 = 987654321L;
        system.debug('long l1 ==> ' + l1);

        id accId = '001Dp0000045jfKIAQ';//valid sf id??? Gerçek id olmazsa çalışmaz
        system.debug('acc id is ' + accId);

        double dd1 = 884.54;
        system.debug('double ==> ' + dd1 );

        //we use object when we integrate sf with external system.
        object obj1 = 'anything';//string works
        object obj2 = 99; //integer works
        object obj3 = 8794.55;//decimal works
        object obj4 = l1;
        object obj5 = accid;
        object obj6 = dd1;
        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);
        system.debug(obj4);
        system.debug(obj5);
        system.debug(obj6);
    }
    
}