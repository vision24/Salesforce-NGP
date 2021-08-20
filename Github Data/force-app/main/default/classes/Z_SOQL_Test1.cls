public class Z_SOQL_Test1 
{
    public static void mymethod14(string str)
    {
        //List<Contact> ConList1 = [Select firstname,lastname,email from Contact where firstname = 'john'];  //Static search name
        List<Contact> ConList2 = [Select firstname,lastname,email from Contact where firstname= :str ];      // dynamic search name
        //system.debug(ConList1);
        system.debug(ConList2);
    }

}