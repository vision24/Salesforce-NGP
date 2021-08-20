public class Z_DML_Upsert 
{
    public static void  mymethod24()
    {
        List<Account> acclist1 = [Select Name,NumberofEmployees from Account where CreatedDate=yesterday];
        for(Account a:acclist1)
        {
            a.NumberofEmployees=15000;
        }
     
        for(integer i=1;i<6;i++)
        {
            Account b = new Account(Name='Test Account for Upsert'+i);
            acclist1.add(b);
        }
        
        Upsert acclist1;
    }

}