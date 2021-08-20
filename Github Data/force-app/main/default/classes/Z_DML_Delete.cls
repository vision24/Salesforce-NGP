public class Z_DML_Delete 
{
    public static void  mymethod25()
    {
        List<Account> acclist1 = [Select Name ,NumberofEmployees from Account where Name LIKE '%3%'];
        Delete acclist1;
        
        //Undelete 
        List<Account> acclist2 = [Select Name ,NumberofEmployees from Account where Name LIKE '%3%'AND isDeleted=True ALL ROWS];
        Undelete acclist2;
}
}