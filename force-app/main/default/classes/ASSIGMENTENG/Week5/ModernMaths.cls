public class ModernMaths {
    public static void printFactors(Integer Num) {
        string s = '';//sayıları yanyana yazdırmak için bu s variable ını oluşturduk
        for (Integer i = 1; i <= Num; i++) {
            integer remainder = math.mod(Num, i);

            if(remainder == 0){
                s += i + ', ';
           
            }
        }
        System.debug(s);

    }

}