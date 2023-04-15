public class Candidate {
    public string name;
    public string gender;
    public static integer count = 0;
    public static string companyName;


    //constructor will be called automatic when we create new instance
    public candidate(){
        count++;//bu constructorı buraya ekledik ve apexteki count++ ları yoruma aldık. 
        //consructorı yazmayınca apexte her candidate in başına count++ yazmamız gerekiyordu.

    }

    //non-static method
    public void details(){
        //accessing non-static variables
        system.debug('name is ' + name);
        system.debug('gender is ' + gender);
        //accessing static variable// staticlere non staticlerden erişebiliriz ama non staticlere static içinden erişemeyiz
        system.debug('companyName is ' + companyName);
        system.debug('--------');
        system.debug('count is ' + count);
        system.debug('--------');
        system.debug('******');
    }
    public static void staticDetail(){
        //accessing non-static variables// staticten non statice erişemeyiz
        // system.debug('name is ' + name);
        // system.debug('gender is ' + gender);
        //accessing static variable// staticlere non staticlerden erişebiliriz ama non staticlere static içinden erişemeyiz
        system.debug('companyName is ' + companyName);
        system.debug('--------');
        system.debug('count is ' + count);
        system.debug('--------');
        system.debug('******');
    }
       
    
        
    
}