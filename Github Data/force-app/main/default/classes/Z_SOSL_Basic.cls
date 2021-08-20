@isTest
public class Z_SOSL_Basic 
{
   @isTest public static void mymethod21()

    {
        // Search in Query Editor- Find{What}
                 /* Syntax:-Find{What} IN [What type] RETURNING [Where   ]
                            Find {john} 
                            Find {john} RETURNING Account, Contact
                            Find {john} IN Name Field RETURNING Account, Contact 
                            Find {John} RETURNING Account(Name,Phone),Contact(LastName)*/
         
        // Search in Apex- Find 'What'
        List<List<sOBJECT>> L1 =[find 'first' RETURNING  Account(Name,NumberofEmployees),Contact(LastName,Phone)];
        System.debug(L1);
        
        //Acceess Record return by sosl
       
        List<Account> acclist =L1[0];
        List<Contact> conlist =L1[1];
        System.debug(acclist);
        system.debug(conlist);
        
        for(Account a:acclist)
        {
            system.debug(a.name);
            system.debug(a.NumberofEmployees);
        }
        
        for(Contact c:conlist)
        {
            system.debug(c.Name);
            system.debug(c.phone);
        }
    }
}