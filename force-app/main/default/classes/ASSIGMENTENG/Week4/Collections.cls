public class Collections {
    public static String listAssigment(Integer month){
        List<String> lstMonth = new List<String>();
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');

        String output_Month = '';

        if(month > 0 && month <= lstMonth.size()){
            output_Month = lstMonth.get(month - 1);
        }else {
            output_Month = 'Not a valid month.';
        }
        return output_Month;

    }

}