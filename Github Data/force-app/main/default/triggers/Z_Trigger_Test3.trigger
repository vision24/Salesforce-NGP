trigger Z_Trigger_Test3 on Opportunity (after insert)
{
    Contact c = new Contact();
    for(opportunity opp:Trigger.new)
    {
        c.AccountId=opp.AccountId;
        c.FirstName=opp.name;
        c.LastName='owner';
        insert c;
        
    }

}