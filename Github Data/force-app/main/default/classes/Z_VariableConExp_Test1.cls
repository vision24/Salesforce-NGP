public class Z_VariableConExp_Test1 
{
    public static void mymethod1()
    {
        integer i;       // variable integer
        i=20;            // valu assign       20 is the literal
        
        string x = 'welcome';                // 'welcome' is literal
        system.debug(i);
        system.debug(x);
        
        integer p=i*4/2;            // this is EXPRESSION
        system.debug(p);
        
        final integer j=10;
        system.debug(j);
        
        // j=23;               as we have initialize j with 23 with final so now it is "CONSTANT" now cant assign new value
        // system.debug(j);     
    } 
}

/* EXECUte 2-Way
  1) Z5VarConExpLitr1.mymethod1();             if we make method STATIC  then we can access directly by class.method_name
  
  2) Z5VarConExpLitr1 obj1= new Z5VarConExpLitr1();    For Making object method should not be STATIC
     obj1.mymethod1();                 

static method is only associated with a class, it can’t access the instance member variable values of its class.*/