Map<String, Decimal> marksObtainInMaths = new Map<String, Decimal>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);
System.debug('This is the first map ' + marksObtainInMaths);

marksObtainInMaths.put('0111CE099', 72);
marksObtainInMaths.put('0111CE061', 45);
marksObtainInMaths.put('0111CE092', 65);
marksObtainInMaths.put('0111CE093', 15);
System.debug('This is addition map ' + marksObtainInMaths);

System.debug('All studens roll numbers are ' + marksObtainInMaths.keySet());
System.debug('All marks obtain of ' + marksObtainInMaths.values());

Set<String> uniqueRollNumberSet = new Set<String>();
List<Decimal> marksObtainList = new List<Decimal>();

for (string rollNum : marksObtainInMaths.keySet()) {
    uniqueRollNumberSet.add(rollNum);
    Decimal marks = marksObtainInMaths.get(rollNum);
    marksObtainList.add(marks);
    if (marksObtainInMaths.get(rollNum)<20) {
        System.debug(rollNum + ' is not qualified for next class.');
    }
    
System.debug('The unique roll numbers are ' + uniqueRollNumberSet);
System.debug('The marks obtain list is ' + marksObtainList);
}
