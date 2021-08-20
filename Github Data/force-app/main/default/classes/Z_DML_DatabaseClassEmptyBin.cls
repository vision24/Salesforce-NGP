public class Z_DML_DatabaseClassEmptyBin 
{
    public static void mymethod23()

    {
        List<Account> acclist = [Select ID from Account where isDeleted=True ALL ROWS];
        Database.emptyRecycleBin(acclist);
    }
}