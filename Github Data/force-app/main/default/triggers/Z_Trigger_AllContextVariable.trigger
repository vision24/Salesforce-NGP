trigger Z_Trigger_AllContextVariable on Contact (before insert, before update, before delete, after insert, after
update, after delete) 
{
  // 5) isInsert
 // 6) isUpdate
 // 7) isDelete
 // 8) isUndelete
 // 9) isBefore
 //10) isAfter
 //11) Size
 if(trigger.isBefore)
 {
       if(trigger.isInsert)
 	   {
 	   System.debug('I am before Insert');
       } 
          else if(trigger.isUpdate)
          {
 		  System.debug('I am before Update');
		  } 
              else if(trigger.isDelete)
 			  {
 			  System.debug('I am before Delete');
 			  } 
 }
 else if(trigger.isAfter)
  {
 		if(trigger.isInsert)
 		{	
          System.debug('I am after Insert');
        } 
            else if(trigger.isUpdate)
           {
           System.debug('I am after Update');
           }
             else if(trigger.isDelete)
             {
              System.debug('I am after Delete');
             }
               else if(trigger.isUndelete)
                {
                System.debug('I am after Undelete');
                }
 }
}