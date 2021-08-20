public class Z_Datatypes_ListArray1 
{
    public static void mymethod6()
    {
                 // array in list declartion
        List<Integer> L1 = new Integer[4];    //or
        Integer[] L2 = new Integer[4];         //or
        Integer[] l3 = new List<Integer>();
        
        L1[0]=6;
        L1[1]=7;
        L1[2]=8;
        L1[3]=9;
        system.debug(L1);
        system.debug(L1[2]);
        
        
    }

}