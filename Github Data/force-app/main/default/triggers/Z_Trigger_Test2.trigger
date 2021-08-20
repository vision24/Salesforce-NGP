//Create a Dual trigger on opportunity that throws the error if the ammount less than 5000 for new entry
    //and throw error if amount is less than 3000 for updating existing.
    //we will use [isInsert][isUpdate] context variable
trigger Z_Trigger_Test2 on Opportunity (before insert,before update)
{
    for(opportunity opp:Trigger.new)
    {
        if(Trigger.isInsert && opp.Amount<5000)
            opp.addError('The ammount should not be less than 5000');
        else if(Trigger.isUpdate && opp.Amount<3000)
            opp.addError('The ammount should not be less than 3000');
    }
}