public class EmployeeTriggerHandler {
    //Why handler?
        //to create methods and call it from trigger
        //to have more clean trigger
        //easy to maintain
        //reuse functionality
    //Neden işleyici?
         // yöntemler oluşturmak ve onu tetikleyiciden çağırmak için
         // daha temiz bir tetikleyiciye sahip olmak için
         //bakımı kolay
         //işlevselliği yeniden kullan
         public static void updateJoinDate(List<Employee__c> empTriggerNew) {
            for (Employee__c newEmp : empTriggerNew) {
                if (newEmp.joinDate__c == null) {
                    newEmp.JoinDate__c = date.today();
                }
            }
        }
    
        public static void validateJoinDate(List<employee__c> empTriggerNew) {
            for (Employee__c newEmp : empTriggerNew) {
                //check if joindate is in future
                if(newEmp.JoinDate__c > date.today()){
                    newEmp.joinDate__c.addError('Join date cannot be in Future. Alright?');
                }
            }
        }
    }