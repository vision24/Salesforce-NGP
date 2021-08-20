public class Z_SOQL_RelationMultilevel 
{
    public static void mymethod19()

    {
      List<OpportunityLineItem> L1 = [Select  Name,Quantity,Opportunity.Name,Opportunity.Amount,Opportunity.Account.Name,Opportunity.Account.NumberofEmployees from OpportunityLineItem];
     system.debug(L1);
        
       
      List<Opportunity> L2 = [Select Name,Amount,Account.Name,Account.NumberofEmployees,(Select Name,Quantity from OpportunityLineItems)from Opportunity];
      System.debug(L2);
    }
}