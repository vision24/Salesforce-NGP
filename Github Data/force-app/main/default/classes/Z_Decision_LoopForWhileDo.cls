public class Z_Decision_LoopForWhileDo 
{
    public static void mymethod14()
    {
        Integer i=0;
        while(i<5)
        {
            i++;
            system.debug('hey1 while');
        }
        
        for(i=0;i<5;i++)
        {
            system.debug('hey2 for');     
                                          
        }
        integer k=0;
        do
        {
            system.debug('hey3 for dowhile');
            k++;
        } while(k<5);
    }

}