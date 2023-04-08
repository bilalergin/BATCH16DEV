public class MethodsDemo2 {
   // 06.04.2023
   //return type + parametrized methods
   public string returnMessage(string name) {
    System.debug('code reached inside method');
    String returnStr = 'Hi ' + name + ', nice to meet you';
    return returnStr;
    
   }
   public integer returnMessage2(string name) {
    String returnStr = 'Hi ' + name + ', nice to meet you';
    Integer returnLng = returnStr.length();
    return returnLng;   
   }
   
   //pass string in method.
    //returnMessage2(name)
        //print str = hi + name + nice to meet you.
    //return length of str;
    public integer returnMessage3(string name){
        string printStr = 'Hi ' + name + ', nice to meet you';
        system.debug(printStr);
        integer l = printStr.length();//length is string method
        return l;
    }
    public boolean nameContainsA(string str) {
        Boolean checkA = str.containsIgnoreCase('a');
        return checkA;
        
    }
    //2.Yol

    public boolean nameContainsA2(string name) {
        Boolean checkA2 = name.containsIgnoreCase('a');
        System.debug('Does ' + name + ' contaisn a? ' + checkA2);
        return checkA2;
        
    }
}