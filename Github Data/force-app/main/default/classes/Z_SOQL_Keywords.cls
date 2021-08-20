public class Z_SOQL_Keywords 
{
    public static void mymethod16()
    {
        List<Contact> lst1 = new List<Contact>();
        List<String> lst2 = new List<String>{'John','Sambit','Ashish','Rahul'};
        
             // IN keyword
        List<Contact> conlist1 = [select firstname,lastname,email from contact where firstname IN :lst2];
        system.debug(conlist1);
        
            //  NOT IN
        List<Contact> conlist2 = [select firstname,lastname,email from contact where firstname NOT IN :lst2];
        system.debug(conlist2);
        
           // LIKE
           // %(percentage) => 0 or multiple characters
           // _(underscore) => single character
         List<Account> acclist1 = [ select Name from Account where name LIKE 'FirstAccount'];
        List<Account> acclist2 = [ select Name from Account where name LIKE 'burlington%'];
        List<Account> acclist3 = [ select Name from Account where name LIKE '%oil%'];
        List<Account> acclist4 = [ select Name from Account where name LIKE '_force'];
        system.debug(acclist1);
        system.debug(acclist2);
        system.debug(acclist3);
        system.debug(acclist4);
         
        // ORDER BY
       List<opportunity> opplist5 = [ select Name, Amount from opportunity Order BY amount];// you can add (ASC,DESC,NULLS FIRST,NULLS LAST) after Amount
        system.debug(opplist5);
        
        // GROUP BY
        List<AggregateResult>  agrgrp6 = [Select StageName from Opportunity GROUP BY Stagename]; 
        system.debug(agrgrp6);
        
        // LIMIT
        List<Account> acclist5 = [Select Name from Account LIMIT 2]; // return only 2 sObject
        system.debug(acclist5);
        Account a = [Select Name from Account LIMIT 1];
        system.debug(a);
        
        //FOR UPDATE
        List<Account> acclist6 = [Select Name from Account FOR UPDATE]; 
            //It will update data
        
            
        // ALL ROWS
       List<Account> acclist7 = [Select Name from Account ALL ROWS]; // Return All account object record including the deleted rows
       List<Account> acclist8 = [Select Name from Account where isDeleted=true ALL ROWS]; //Return all the deleted record
       List<Account> acclist9 = [Select Name from Account where isDeleted=true ];    // will not return any record as we not use ALL Rows keywrds
          System.debug(acclist7);
         System.debug(acclist8);
         System.debug(acclist9);
    }
}