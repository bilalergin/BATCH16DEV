public class NewCar {
    Integer currentSpeed = 0;
    String carType;
    String carName;
public void startCar(String carType, String carName){
    System.debug('Car Name: ' + carName);
    System.debug('Car Type: ' + carType);
}
public void accelerate(Integer x){
    currentSpeed += x;
    System.debug('The speed value: ' + currentSpeed);
}
public void brake(Integer y){
    currentSpeed -= y;
    System.debug('The speed value: ' + currentSpeed);
}
public void stopCar(){
    currentSpeed = 0;
    System.debug('The speed value: ' + currentSpeed + ' after stopping.');
}
public void checkSpeed(){
    If(currentSpeed > 0 && currentSpeed <= 30){
        System.debug('City Mode');
    }else if (currentSpeed > 30 && currentSpeed <= 60){
        System.debug('Economy Mode');
    }else if (currentSpeed > 60){
        System.debug('Sports Mode');
    }
    }

}