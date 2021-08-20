public class Z_Datatypes_ListNested 
{
   public static void mymethod8()
   {
       list<list<Integer>> IList = new list<list<Integer>>();
       
       List<Integer> L1 = new List<Integer>{11,21,31};
        List<Integer> L2 = new List<Integer>{12,22,32};
         List<Integer> L3 = new List<Integer>{13,23,33};
             
      IList.add(L1);
       IList.add(L2);
        IList.add(L3);
      
     system.debug(IList);
   }
}