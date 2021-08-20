public class Z_datatypes_sObject 
{
    public static void mymethod3()
    {
        // **********create account  and contact sobject*****
        Account a1 = new account();
        Contact c1 = new contact();
        
        
        // **********Assign field value to sObject of Account and Contact
                      
                  // Through Constructor
        Account a2 = new account(name='Amazon');
        Contact c2 = new contact(FirstName='alex', LastName='Singh');
        
                  // Through Dot Notation
          a1.name= 'Flipkart';
          a1.NumberOfEmployees = 250;
          c1.FirstName = 'Aush';
          c1.LastName = 'Choudhari';    
        system.debug(a1);
        system.debug(c1);
         system.debug(a2);
        system.debug(c2);
    }

}