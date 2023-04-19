public class ListDemo2 {

    //! 18.04.2023
    public static boolean candidateList(string str){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);
        //contains is case sensitive for string
        boolean check = listC.contains(str);
        return check;
   }

   public static void friendList() {
        list<string> fl = new list<string>{'Sachin', 'Arpan', 'Erik', 'Roy','roy', 'arpan', 'erik'};
        system.debug('before : ' + fl);

        fl.sort();
        system.debug('after sorting: ' + fl);
   }

   public static void iterateList1() {
        list<integer> l1 = new list<integer>();
        l1.add(77);//0
        l1.add(15);//1
        l1.add(21);//2
        l1.add(99);//3
        l1.add(77);//4
        l1.add(77);//5
        //get one by one element and print.
        //77 l1[0]
        //15 l1[1]
        //21 l1[2]
        //integer eachNumber ==> integer because list<integer>
                //eachNumber ==> variable name to be used inside for loop, where we get one by one value //! iterate demek değerleri birer birer getirmek
        //for each loop
        for( integer eachNumber : l1 ){
            system.debug(eachNumber);
        }
   }  
   
   public static void iterateList2() {
    list<integer> l2 = new list<integer>();
    l2.add(77);//0
    l2.add(15);//1
    l2.add(21);//2
    l2.add(99);//3
    l2.add(77);//4
    l2.add(77);//5
    //get one by one element and print.(iterate)
    //77 l2[0]
    //15 l2[1]
    //21 l2[2]
    //integer eachNumber ==> integer because list<integer>
            //eachNumber ==> variable name to be used inside for loop, where we get one by one value
    //for each loop

    //print following
    //5 * 77 = 385
    //5 * 15= 75
    //5 * 21= 105
    for( integer eachNumber : l2 ){
        // system.debug('5 X ' + eachNumber + ' =' + 5*eachNumber);//! iki şekilde de yazdırılabilir.
        system.debug('5 X ' + eachNumber + ' =' + (5*eachNumber));
    }
    }

    //! buradan itibaren listForEachAnon içinde execute ettik

     //add all the elements in l1 list, and return the summation.
   public static integer add(list<integer> l1) {
    integer sum = 0;
    
    for (integer num : l1) {
        system.debug('sum inside for : ' + sum);
        sum += num; //sum = sum + num
        //sum = 0+8; ==> 8
        //sum = 8+9; ==> 17
        //sum = 17+21; ==> 38
    }

    return sum;
    }
    public static integer add(Integer a, Integer b) {
        return a+b;
    }
    public static Decimal add(Decimal a, Decimal b) {
        return a+b;
    }
    public static void iterateListString1() {
        List<string> listC = new list<string>();
        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        listC.add('Elonnnn');//5
        
        //print each element of this list<string> one by one along with its length
            //Marc - 4
            //Steve - 5
        for (string eachStr : listC) {
            integer len = eachStr.length();
            system.debug(eachStr + ' - ' + len );
    //         for (string eachStr : listC) {
    // System.debug(eachStr + ' - ' + eachStr.length());//! variable ataması yapmadan bu şekilde de sonucu görebiliriz
    //     }
    }
    }

    //concate all elements in list by || and return final string
   public static string add(list<string> ls){//! listi new instance la veya parametre olarak yazmaya nasıl karar veriyoruz? eğer burada değer verirsek new intance yapıyoruz. değeri başka yerden alırsak parametre giriyoruz
    string finalString = '';//! değeri başka methotdan aldığımız için parametre girdik
    for (string eachStr : ls) {
        system.debug('final str inside for ==> ' + finalString);
        finalString = finalString + eachStr + ' || ';
    }
    //finalString = finalString.removeEnd(' || ');
    return finalString;
}

//! 19.04.2023

public static void iterateListString99(){// list 9 un elemanlarının kaç harften oluştuklarını yazdırdık
    list<string> list9 = new list<string>{'class', 'object', 'methods', 'constructor', 'getter setter', 'list'};
    system.debug(listDemo2.add(list9));//! değeri kendimiz methot içinde girdiğimiz için new intance yaptık
    //example:
        //class
        //class - 5
        //object
        //object - 6
    list<string> list99 = new list<string>();   
    //we are iterating list9.
    //inside for each loop of list9, we cannot modify(add or remove elements from) list9. 
    //solution?
        //create another empty list and add elements in the new list
    for (string eachTopic : list9) {
        string temp = eachTopic + ' - ' + eachTopic.length();
        list99.add(eachTopic);
        list99.add(temp);
    }
    system.debug(list99);
}
    
 }