trigger Z_Trigger_BeforeInsert1 on Account (before insert) 
{
    for(Account acc:Trigger.new)
    {
        acc.NumberofEmployees = 1256;
    }

}