public class Z_Datatypes_Map1 
{
    public static void mymethod12()
    {
        map<Integer,String> mp1 = new map<Integer,String>(); // Here Integer=Datatype for key. String=Datatype for value
        mp1.put(11,'jack');
        mp1.put(12,'sack');
        mp1.put(13,'mack');
        System.debug(mp1);
        
        mp1.put(12,'packing');  // overrite the value for key 12
        System.debug(mp1);
        
        map<Integer,String> mp2 = new map<Integer,String>{21=>'saam', 22=>'daam'}; // Initialize and assign value together
            system.debug(mp2);
    }

}