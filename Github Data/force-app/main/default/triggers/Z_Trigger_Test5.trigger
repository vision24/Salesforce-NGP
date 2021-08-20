//Create a trigger that will throw error when Amount below to old value 
trigger Z_Trigger_Test5 on Opportunity (before update) 
{
    for( Opportunity oppOld:Trigger.old)
    {
        for(Opportunity oppNew:Trigger.new)
        {
            if(oppOld.Id==oppNew.Id && oppOld.amount > oppNew.amount)
                oppNew.addError('Amount can not be below to old value ');
                
        }
    }

}