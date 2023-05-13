public class MethodsDemo {
    //! 05.04.2023
    //return type is mandatory
    public void welcomeMessage() {
        System.debug('Hi there, welcome to the world');

    }
    //print dynamic message
    //parameter -> string datatype
    public void samplePrintMessage(string m) { //parantez içine önce parametre tipini yazıyoruz, sonra variable ı yazıyoruz
        //m is parameter variable name which we use inside method
        System.debug(m);
        
    }
    //parameter --> 1
    //datatype of parameters -> string
    public void newMessage(string name) {
        System.debug('Hi ' + name  + ', welcome to the world of apex, buddy!');

        
    }
}