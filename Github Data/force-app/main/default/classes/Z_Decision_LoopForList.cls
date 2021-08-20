public class Z_Decision_LoopForList 
{
    public static void mymethod15()
    {
        List<Integer> Llist = new List<Integer>{11,22,33,44,55,66,77};
            system.debug(Llist);
    
        for(Integer i=0;i<Llist.size();i++)          //Simple for
        {
            Llist[i]=Llist[i]*2;
            system.debug(Llist);
        }
        
        for( Integer j:Llist)                  // For each
        {
            j=j*2;
            system.debug(j);
        }
    }
    

}