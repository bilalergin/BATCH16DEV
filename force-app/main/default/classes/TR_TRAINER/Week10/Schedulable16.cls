public class Schedulable16 implements Schedulable {
//! 03.06.2023

public void execute(SchedulableContext SC) {
    BatchApex16 ba16 = new BatchApex16();
    Database.executeBatch(ba16, 11);
}

}