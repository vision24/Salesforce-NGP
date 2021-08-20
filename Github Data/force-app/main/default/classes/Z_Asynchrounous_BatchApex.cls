global class Z_Asynchrounous_BatchApex implements Database.Batchable<sObject>,Schedulable
{ 
global Database.QueryLocator start(Database.BatchableContext BC)
	{
	return Database.getQueryLocator([Select AnnualRevenue from lead]);
	}	
global void execute(Database.BatchableContext BC, List<lead> IList)
	      {
				for(lead I:IList)
                {
                    I.AnnualRevenue=200000;
                }
             
        update IList;
          }

global void finish(Database.BatchableContext BC)
	{
	Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
	String[] toAddress = new String[] {'subhash.vision24@gmail.com'};
	mail.setToAddresses(toAddress);
	mail.setSubject('Apex Batch Job is done');
	mail.setPlainTextBody('The batch Apex job processed ');
	Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
    
   global void execute(SchedulableContext sc)
   {
       Z_Asynchrounous_BatchApex  obj = new  Z_Asynchrounous_BatchApex();
       Database.executeBatch(obj);
       Database.executeBatch(obj, 200);    //this set the 200 size for each chunk 
   }
}


//To Execute this program
// Z_Asynchrounous_BatchApex  obj = new  Z_Asynchrounous_BatchApex();
// Database.executebatch(obj);