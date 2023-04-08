public class ReturnClassAssignment {
    //06.04.2023 ödevi
    public string returnStringMethod(String firstname, String lastname) {
        String fullName = firstname + lastname;
        return fullName;

    }
    // String için 2. yol
    public String stringMethod(String name, string surname){
        String fName = name + surname;
        System.debug('My name is ' + name + ' ' + surname);
        return fName;

    }

    public integer addition(Integer x, Integer y){
        Integer z = x + y ;
        return z;
        
    }
    public integer addition(integer x, Integer y, Integer z, Integer m){
        Integer sumValue = x + y + z + m;
        return sumValue;
    }
}