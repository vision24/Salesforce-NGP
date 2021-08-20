public class Z_Datatypes_ListMethods 
{
    public static void mymethod7()
    {
        List<Integer> L5 = new List<Integer>{11,22,33,44,55};
        system.debug(L5);
        
        system.debug(L5.size());
        system.debug(L5.get(3));
        
        L5.remove(2);
        system.debug(L5);
        L5.set(2,77);
        system.debug(L5);
        L5.sort();
        system.debug(L5);
        system.debug(L5.isEmpty());
        
       List<Integer> L11= L5.clone();
        system.debug(L11);
          //L5.clear();
    }

}