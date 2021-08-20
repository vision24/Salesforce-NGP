import { LightningElement,track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

export default class AccountManagerLDS extends LightningElement 
{
    @track accountName;
    @track accountPhone;
    @track accountWrebsite;

    accountNameHandler(event)
    {
        this.accountName=event.target.value;
    }

    phoneHandler(event)
    {
        this.accountPhone=event.target.value;
    }
                          
    websiteHandler(event)
    {
        this.accountWrebsite=event.target.value;
    }

    createAccountHandler()
    {
        const fields ={'Name':this.accountName,'Phone':this.accountPhone,'Website':this.accountWrebsite};
        const recordInput= {apiName:'Account',fields};
        createRecord(recordInput).then(Response=>{
            console.log("Account Has been Created",+Response.id);
        }).catch(error =>{
            console.error("Error Creating Account",error.body.message);

        });
    }
}