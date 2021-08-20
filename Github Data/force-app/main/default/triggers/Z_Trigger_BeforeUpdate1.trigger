trigger Z_Trigger_BeforeUpdate1 on Account (before update)
{
    Account a = Trigger.new[0];
    a.name = a.name+'Limited';
    

}