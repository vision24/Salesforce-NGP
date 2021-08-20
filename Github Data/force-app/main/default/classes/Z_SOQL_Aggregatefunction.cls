public class Z_SOQL_Aggregatefunction 
{
    public static void mymethod17()
    {
           // SUM
        AggregateResult arl1 = [Select SUM(Amount) from opportunity];
        system.debug('Sum Result is' +arl1);
        
          //MAX
        AggregateResult arl2 = [Select MAX(Amount) from opportunity];
        system.debug('Sum Result is' +arl2);
        
        // COUNT
        AggregateResult arl3 =[Select COUNT(ID) from opportunity];
        system.debug('Total ID is:' +arl3);
        
        
        AggregateResult arl4 = [Select SUM(Amount),MAX(Amount),MIN(Amount) from opportunity];
        system.debug('Sum Result is' +arl4);
    }

}