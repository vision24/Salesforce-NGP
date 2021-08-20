public class Z_DML_Insert 
{
    public static void mymethod22()
    {
        //********DML Standalone Statement
       
    /*  1.Insert
        2.Update
        3.Upsert
        4.Delete
        5.Undelete
        6.Merge       */
       
        // 1-element
      // Account a = new Account(Name='Rohan');
       // insert a;
       
         // List of element
      List<Account> acclist1 = new List<Account>();
        for(integer i=1;i<6;i++)
        {
            Account b = new Account(Name='Test Account'+i);
            acclist1.add(b);
        }
        Insert acclist1;
    }

}