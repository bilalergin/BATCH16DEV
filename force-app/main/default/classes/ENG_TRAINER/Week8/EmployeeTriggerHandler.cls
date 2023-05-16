public class EmployeeTriggerHandler {

    public static void updateJoinDate(List<Employee__c> empTriggerNew) {
        for (Employee__c newEmp : empTriggerNew) {
            if (newEmp.joinDate__c == null) {
                newEmp.JoinDate__c = date.today();
            }
        }
    }
}