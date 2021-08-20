public class Z_Datatypes_SetMethods 
{
    public static void mymethod11()
    {
        set<Integer> S1 = new set<Integer>{1,2,3,4};     // This is Set
        system.debug(S1);
                list<Integer> L6 = new list<Integer>{5,6,7,8}; // This is List
                System.debug(L6);
                
        S1.addall(L6);
        system.debug(S1);
                
        system.debug(S1.contains(4));
        system.debug(S1.containsAll(L6));
        
        S1.remove(4);
        system.debug(S1);
        
        Set<Integer>  L7 =  S1.clone();
        system.debug(L7);
        
    }
    

}