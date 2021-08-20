public class Z_ExceptionHandling1 
{
    public static void method()
    {
       // System.debug('Hii everyone');
        //Integer a;
        //Integer b=a*5;                  Here Exception will occur
        //System.debug('bye everyone');
       
        System.debug('Hii everyone');
        try{
            integer a;
            Integer b=a*5;
        }
        catch(Exception e){
             System.debug('Exception Occured here');
        }
        finally{
            system.debug('No Matter I m Finaaly I will execute');
        }
    }

}