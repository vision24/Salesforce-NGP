//SOQL Basic  FOR loop and For EACH Loop
public class Z_Practice 
{
    public static void method1()

    {
        List<Account> acc = [Select Name,NumberOfEmployees from Account where NumberOfEmployees <10000];
        //Simple for Loop
        for( Integer i=0;i<acc.size();i++)
        {
            System.debug(acc[i].Name);
            System.debug(acc[i].NumberOfEmployees);
        }
        // For Each Loop
        for(Account i:acc)
        {
            System.debug(i.name +i.NumberOfEmployees);
        }
    }
}