public class VariableAssignment {
    public void variableAssignmentMethod(){
        String batchName='Batch 16';
        Integer noOfStudents = 50; 
        String description = 'This is best batch and we are doing great'; 
        String batchDescription= batchName + ' has ' + noOfStudents + ' students. ' + description;
        System.debug(batchDescription);
        // System.debug(batchName + ' has ' + noOfStudents + ' students. ' + description);//! şeklinde de yazabiliriz.
 
    }
}