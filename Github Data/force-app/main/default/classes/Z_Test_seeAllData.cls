@isTest(seeAllData=true)
public class Z_Test_seeAllData 
{
   @isTest(seeAllData=true)
    static void accountTest()
    {
        List<Account> acc = [Select name,Phone,Rating from Account LIMIT 15];
        System.assertEquals(15, acc.size(), 'Expected account not matching');
    }
  @isTest 
    static void contactTest()
    {
        account acc = new account(Name='Testing data account',Rating='Hot');
        insert acc;
        
        contact ccc = new contact(FirstName='TestingFirst',Lastname='TestingLast',email='testing@gmail.com', AccountId=acc.Id);
        insert ccc;
        
        List<contact> ccc1 = [Select ID, FirstName,Lastname from contact LIMIT 1];
        System.assertEquals(1,ccc1.size(),'Expectation not meet');
    }
    @isTest
    static void loadDataTest()
    {        
        List<account> SObjectList = (List<Account>) Test.loadData(Account.sobjectType, 'testAccount');
    Account acc = SObjectList.get(0);
    system.debug('Account are' +acc);
        System.assertEquals(3, SObjectList.size(), 'Not Maching');
    }}