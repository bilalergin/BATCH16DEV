public class TicketClass {
    
    Integer ticketNumber;
    String ticketType;
    
    public void setTicketNumber(Integer num) {
        ticketNumber = num;        
    }
    public Integer getTicketNumber() {
        return ticketNumber;
        
    }
    public string getTicketType() {
        if (ticketNumber >= 0 && ticketNumber < 200) {
           ticketType = 'Silver';          
        } else if (ticketNumber >= 200 && ticketNumber < 400) {
            ticketType = 'Gold';
        } else if (ticketNumber >= 400 && ticketNumber < 600) {
            ticketType = 'Platinium';
        }else{
            ticketType = 'Unknown';
        }

        return ticketType;          
        
        
    }

}