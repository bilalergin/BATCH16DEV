string s = 'something somthing';
system.debug( !(s.contains('a') && s.contains('e')) );
            //( ! (true && false))
            //* !false 
            //=> true

boolean b = (!(s.contains('a') && s.contains('e')));
System.debug(b);

system.debug( b || s.equals('something') );
system.debug( (!b || s.equals('something')) &&  s.equals('something somthing'));

//&& || > <
    //we need two operands to use these
    //binary = ikili

//  !*==> unary =tekli