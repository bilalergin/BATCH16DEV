public class CollectionAssignment {
    Set<String> countriesSet = new Set<String>{'India', 'USa', 'Russia', 'Germany', 'Singapore', 'Japan'};
    public void printLowercase() {
        List<String> lowerCaseCountries = new List<String>();
        for (string countries : countriesSet) {
            lowerCaseCountries.add(countries.toLowerCase());
            
        }
        System.debug('The original countries ' + countriesSet);

        System.debug('Lowercase countries ' + lowerCaseCountries);
        
    }
    public void printUppercase() {
        List<String> upperCaseCountries = new List<String>();
        for (string countries : countriesSet) {
            upperCaseCountries.add(countries.toUpperCase());
            
        }
        System.debug('Uppercase countries ' + upperCaseCountries);
        
    }
}