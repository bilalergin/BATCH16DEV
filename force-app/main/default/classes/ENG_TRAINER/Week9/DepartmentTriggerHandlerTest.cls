@isTest
public class DepartmentTriggerHandlerTest {
        //! 27.05.2023

   @isTest
   private static void testFuture1() {
        list<Department__c> listDep = new list<department__c>{
            new Department__c(Name__c = 'Future'),
            new Department__c(Name__c = 'Present'),
            new Department__c(Name__c = 'Past')
        };

        Test.startTest();
        insert listDep;
        Test.stopTest();//! start test ve stop testin iki kullanımı 1. governor limiti aşmak için 2. asenkron metotlarda
        //! future metodu future metot içinde çağıramayız 
        //To ensure that any asynch process has completed the execution we write Test.stopTest()

        //assert
        List<Employee__c> allEmps = [select id, first_name__c from employee__c];
        assert.areEqual(3, allEmps.size());
   }
}