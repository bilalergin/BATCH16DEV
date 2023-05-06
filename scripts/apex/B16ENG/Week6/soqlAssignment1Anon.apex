List<Employee__c> topEmployeesList = SoqlAssignment1.topEmployees();
for(Employee__c emp : topEmployeesList) {
    System.debug(emp.Name + ': ' + emp.Salary__c);
}

System.debug('=============================================');

String mostPopulatedCountry = SoqlAssignment1.mostPopulatedCountry();
System.debug('Most populated country: ' + mostPopulatedCountry);
