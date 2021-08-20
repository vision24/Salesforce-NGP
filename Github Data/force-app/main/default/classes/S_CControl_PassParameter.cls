public with sharing class S_CControl_PassParameter 
{
    public Account account{get;set;}
    public string getName()

    {
        return 'ControllerNew';
    }
    public S_CControl_PassParameter()
    {
        if(account==null)
            account=[Select Name from Account where id='0015g00000Gbhr2AAB']; //:ApexPages.currentPage().getparameters().get('id')];
       // return account;
    }
     public PageReference save()
     {
         update account;
         PageReference SecondPage=Page.E_mySecondPage;
         SecondPage.setRedirect(True);
         SecondPage.getParameters().put('id',account.id);
         
         return SecondPage;
         
     }
    public PageReference GoToNewPage()

    {
        PageReference SecondPage= Page.E_mySecondPage;
        SecondPage.setRedirect(True);
        SecondPage.getParameters().put('id',account.id);
        
        return SecondPage;
    }}