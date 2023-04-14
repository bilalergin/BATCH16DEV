global class Bike {
    private string bikeNumber;
    public string name;
    public string price;

    // public Bike(){
    //     bikeNumber = 'A1001'; //! bu constructor la private ı çağırabiliriz.
    // }

    //set value of bikeNumber using set method // bir metodun içinde private a yeni bir value atarsak yazdırabiliriz
    public void setBikeNumber(string bn) {
        bikeNumber = bn;
        
    }

    public void details(){
        system.debug('bike number is ' + bikeNumber);
        system.debug('bike name is ' + name);
        system.debug('bike price ' + price);
    }
}