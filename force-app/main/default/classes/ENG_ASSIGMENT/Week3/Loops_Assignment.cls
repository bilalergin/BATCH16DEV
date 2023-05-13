public class Loops_Assignment {
    //10.04.2023
    public void whileLoopMethod(integer n) {
        Integer i = 1;
        while (i <= n) {
            System.debug(i);
            i++;            
        }

    }
    public void printEven() {
        for (Integer i = 1; i <= 100; i++) {
            Integer remainder = Math.mod(i, 2);
            if (remainder == 0) {
                System.debug(i);
                
            }
            
        }
                
    }

    public void printPower(integer m) {
        Integer power = m;
        String result = String.valueOf(m);
        for (Integer i = m; i < m + (m-1); i++) {
            power *= m;
            result += '*' + String.valueOf(m);
            
        }
        System.debug(result + ' = ' + power);
    }

}