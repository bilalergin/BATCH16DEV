public class String_Assignment {
    public void assignment() {
        String Localstring = 'Thanks for the session on the string'; 
        
        //* Create a variable and find out the length of the Localstring variable and display the length. 
        integer lengthOfLocal = Localstring.length();
        System.debug('Length of Localstring is ' + lengthOfLocal);

        //! Create a variable and convert the Localstring variable to upper case and display the same. 
        String LocalstringUppercase = Localstring.toUpperCase();
        System.debug(LocalstringUppercase);
        System.debug('Original Localstring ' + Localstring);

        //? Create a variable and check string “session” is present in Localstring variable or not. 
        Boolean checkSession = Localstring.contains('session');
        System.debug('Localstring does contain session? ' + checkSession);

        //? Create a variable and check string “sessions” is present in Localstring variable or not. 
        Boolean checkSessions = Localstring.contains('sessions');
        System.debug('Localstring does contain sessions? ' + checkSessions);

        //? Create a variable and check if “SESSION” is present in Localstring variable or not.
        Boolean checkSESS = Localstring.contains('SESSION');
        System.debug('Localstring does contain SESSION? ' + checkSESS);

        //todo Print index of ‘for’ from Localstring.
        Integer indexOfFor = Localstring.indexOf('for');
        System.debug('Index of for ' + indexOfFor);

        //todo Print index of ‘an’ from Localstring.
        Integer indexOfAn = Localstring.indexOf('an');
        System.debug('Index of an ' + indexOfAn);

        //! Remove ‘the’ from Localstring 
        String reomoveThe = Localstring.remove('the');
        System.debug('Remove "the" ' +reomoveThe);
        System.debug('Original Localstring is = ' + Localstring);





    }
}