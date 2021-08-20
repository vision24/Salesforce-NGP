import { LightningElement,track } from 'lwc';

export default class EmployeeInfoShow extends LightningElement 
{
    @track name;
    @track age;
    @track salary;
    @track show=true;
   
    nameHandler(event)
    {
        this.name=event.target.value;
    }
    ageHandler(event)
    {
        this.age = event.target.value;
    }

    salaryHandler(event)
    {
        this.salary = event.target.value;
    }
    submitHandler(event)
    {
        this.show=false;
    }
}