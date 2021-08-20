import { LightningElement,track } from 'lwc';

export default class CalculateSImain extends LightningElement 
{
    @track currentOutput;
    principle;
    rateOfInterest;
    noOfYears;

    principleHandler(event)
    {
        this.principle=parseInt(event.target.value);
    }
    rateleHandler(event)
    {
        this.rateOfInterest=parseInt(event.target.value);
    }
    yearHandler(event)
    {
        this.noOfYears=parseInt(event.target.value);
    }
    calculateHandler(event)
    {
        this.currentOutput="The Total Interest is:" +(this.principle * this.rateOfInterest*this.noOfYears);
    }
   
}