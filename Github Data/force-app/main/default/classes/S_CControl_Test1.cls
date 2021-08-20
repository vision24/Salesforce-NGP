public class S_CControl_Test1 
{
    private final Account account;
    public S_CControl_Test1()

    {
      List<Account> account = [Select Id,Name,Site from account where Id = :ApexPages.currentPage().getParameters().get('id')];
    }
    public Account getAccount()
    {
        return account;
    }
    public PageReference save()
    {
        update account;
        return null;
    }
        }