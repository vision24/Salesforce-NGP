public class Z_DML_Update 
{
    public static void  mymethod23()

    {
        // Program-1
        List<Account> acclist1 = [Select Name from Account where CreatedDate=yesterday];
        for(Account a:acclist1)
        {
            a.Name=a.Name+'UPDATED';
        }
        Update acclist1; 
        
        // Program-2
       /* List<Opportunity> opplist = [Select Name,Amount,closedate from opportunity where createddate=LAST_90_DAYS];
        Date d =System.today()+90;
        for(opportunity o:opplist)
        {
            o.closedate = d;
        }
        update opplist; */
    }
}