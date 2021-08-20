public class Z_SOSL_Keywords 
{
    public static void mymethod22()
    {
        // OR
        
        List<List<sOBJECT>> slist1 = [Find 'John OR First' RETURNING Account(Name),Contact(FirstName limit 4)];
        System.debug(slist1);
        
        //AND
        
        List<List<sOBJECT>> slist2 = [Find 'John AND First' RETURNING Account(Name),Contact(FirstName)];
        System.debug(slist2);
    }

}