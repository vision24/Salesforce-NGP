public class Z_SOQL_RelationParentChild 
{
     public static void mymethod19()
     {
           //*** Parent-Child Reltionship------Object 
         List<Account> acc1 = [Select Name,NumberofEmployees,(Select lastname,phone from Contacts)from Account];
         system.debug(acc1);
         
         //*** Parent-Child Reltionship------Custom Object 
         
         List<Battle1_Station__c> acc2 = [Select Name,Project1_Status__c,Weapon1_Status__c,(Select Name,Utilization1__c from Resource1s__r) from Battle1_Station__c];
     }       //Battle1_Station__c is Parent                                                                        //Note: this Resource1s is Child Relationship name with __r extension                
             // Resouce1__r is Child    

}