public class Z_SOQL_Test2 
{
    public static void mymethod15()
{
List<Account> accList = [Select Name, NumberOfEmployees from account];
 for(integer i=0; i<accList.size(); i++)               // Simple for loop
  {
      System.debug(accList[i].Name);   
      System.debug(accList[i].numberOfEmployees);
  }
    for(Account a:accList)
    {
        system.debug('The Employee Name=' +a.Name+ 'Total Employee=' +a.NumberOfEmployees);
    }

}
}