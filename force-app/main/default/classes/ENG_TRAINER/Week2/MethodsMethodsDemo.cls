public class MethodsMethodsDemo {
    //! 06.04.2023
    public void printAll(){
        system.debug('0000');
        print1and2();
        system.debug('1111');
        print3();
        system.debug('2222');
    }
    
    public void print1(){
        system.debug('1. print this first');
    }
    public void print2(){
        system.debug('2. print this second');
    }
    public void print1and2(){
        print1();//this is how we call another method in same class.
        print2();
    }
    public void print3(){
        system.debug('3. print this third');
    }
    
    // public void print1(){
    //     system.debug('1. print this first');
    // }
    // public void print2(){
    //     system.debug('2. print this second');
    // }
    // public void print1and2(){
    //     system.debug('iiii');
    //     print1();//this is how we call another method in same class.
    //     system.debug('zzzzz');
    //     print2();
    //     system.debug('vvvvv');
    // }
    // public void print3(){
    //     system.debug('3. print this third');
    // }
    // public void printAll(){
    //     print1and2();
    //     print3();
    // } //! buraya sonradan bi bak
}
