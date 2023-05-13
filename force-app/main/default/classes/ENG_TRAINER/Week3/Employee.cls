public class Employee {
    private string name;
    private decimal salary;
    private String rating;

    public String getRating() {
        if (salary <30000) {
            rating = 'fine';            
        }else{
            rating= 'good';
        }
        return rating;
        
    }

    public void details(){
        system.debug(name);
        system.debug(salary);
    }
    //set method
    public void setName(string name){
        this.name = name;//this metoduyla classtan çağırırız.
    }
    //get method
    public string getName(){
        return this.name;
    }

    //set method name for salary vairable
    public void setSalary(Decimal s){
        if (s >= 8000 && s <= 50000) {
            this.salary = s;
            
        }else{
            this.salary = 0;
            System.debug('salary is not in valid range. Be in limits buddy!');

        }
    }
    public decimal getSalary(){
        return this.salary;
    }
}
