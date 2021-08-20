//Create a trigger on opportunity that throws the error if the ammount less than 5000
trigger Z_Trigger_Test1 on Opportunity (before insert,before update)
{
    for(opportunity op:Trigger.new)
    {
        if(op.amount<5000)
            op.adderror('The ammount should not be less than 5000');
    }
        

}