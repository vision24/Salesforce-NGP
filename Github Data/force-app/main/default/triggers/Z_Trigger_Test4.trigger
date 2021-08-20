//Create Trigger that will not allowed to change the ammount

trigger Z_Trigger_Test4 on Opportunity (before update)
{
    for( Opportunity oppOld:Trigger.old)
    {
        for(Opportunity oppNew:Trigger.new)
        {
            if(oppOld.Id==oppNew.Id && oppOld.amount!=oppNew.amount)
                oppNew.addError('Are you Serious, amount can not be change ');
                
        }
    }

}