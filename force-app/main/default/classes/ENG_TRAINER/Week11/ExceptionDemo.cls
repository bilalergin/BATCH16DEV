public class ExceptionDemo {
    public static void demo1(string s){
         try{
             string s2 = s.toUpperCase();
             system.debug('s2 is ' + s2);
         } catch(Exception ex){
             system.debug('something with wrong there');
             system.debug('common exception: ' + ex);
         }
         system.debug('code completed');
    }
 
    public static void demo2(string n, integer j) {
 
     try {
         account a = new account(name = n);
         insert a;
         system.debug('new acc: ' + a);
 
         integer x = 10/j;
         system.debug('x ==> ' + x);
     } catch(DmlException de){
         system.debug('DML went wrong buddy');
         system.debug('de message: ' + de.getMessage());
         system.debug('de cause: ' + de.getCause());
     }
     catch(MathException me){
         system.debug('Simple math problem.');
         system.debug('me exception: ' + me);
     }
     catch (Exception Ex) {
         system.debug('Something went wrong buddy.');
         system.debug('general or common exception: ' + ex);
     }
     system.debug('code complete. apex is simple.') ;
    }
 }