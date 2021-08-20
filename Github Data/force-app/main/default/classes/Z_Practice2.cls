//SOQL Variable Binding
public class Z_Practice2 {
    public static void method1(String str)

    {
       List<Contact> acc = [Select Firstname,lastName From Contact where FirstName= :str];
        for(Contact i:acc)
        {
            system.debug(i.Firstname +(i.LastName));
        }
    }
}