public class Z_SOQL_RelationChildParent
{
    public static void mymethod18()
    {
        //*****Two Types of relationship******
        //1.Child to Parents relationship
        //2.Parents to Child realationship
       
        //***Child(contact) to Parents(account)>>>>>>>>>>>> standard Object
        List<Contact> con1 = [Select Name,Email,Account.Name,Account.NumberofEmployees from Contact];
        system.debug(con1);
        
                                               //>>>>>>>>>> Custom Object (child-Resource  parent- Battle1Station)
       List<Resource1__c> con2 = [Select Quantity1__c,Utilization1__c,Battle1_Station__r.Project1_Status__c,Battle1_Station__r.Weapon1_Status__c from Resource1__c];
        system.debug(con2);                                                    //use __r for relation   --c for field
    }

}