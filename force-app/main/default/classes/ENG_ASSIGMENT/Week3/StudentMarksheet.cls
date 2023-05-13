public class StudentMarksheet {
    String firstName;
    String lastName;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    public String schoolName;

    public studentMarksheet(){
        schoolName = 'Salesforce Public School'; 
    }
    public void setFirstName(String name){
        this.firstName = name;

    }
    public string getFirstName(){
        return firstName;
    }
    public void setLastName(String lastName){
        this.lastName = lastName;

    }
    public string getLastName(){
        return lastName;
    }
    public void setMarks(Integer math,Integer eng,Integer chemist){
        this.mathematics = math;
        this.english = eng;
        this.chemistry = chemist;
    }
    public void showMarksheet(){
        Integer sum = mathematics + english + chemistry;
        System.debug('Student full name is '+ firstName + ' ' + lastName + ' and school name is ' + schoolName + ' . ' + ' Mark for Mathemetics = '+ mathematics + ', for English = ' + english + ', for Chemistry = ' + chemistry );
        if(sum >= 120){
            System.debug('You are passed');
        }else if (sum < 120){
            System.debug('You need to study more.');
        }
    }


}