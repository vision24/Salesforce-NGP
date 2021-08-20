@isTest
public class Z_Test_Account
{
@isTest public static void TestMethodAccount()
   {
    List<Account> accList = [Select Name, NumberOfEmployees from account];
    for(integer i=0; i<accList.size(); i++)               // Simple for loop
     {
      System.debug(accList[i].Name);   
      System.debug(accList[i].numberOfEmployees);
     }
  }
@isTest public static void TestMethodAccountcreate()
    {
        Account ac= New Account(Name='TestingDemo');
        insert ac;
    }
}