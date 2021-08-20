public class Z_Datatypes_MapMethods
{
    public static void mymethod13()
    {
        map<Integer,String> mp1 = new map<Integer,String>(); // Here Integer=Datatype for key. String=Datatype for value
        mp1.put(11,'jack');
        mp1.put(12,'sack');
        mp1.put(13,'mack');
        System.debug(mp1);
        
        map<Integer,String> mp2 = new map<Integer,String>{21=>'saam', 22=>'daam'};
            system.debug(mp2);
        
        //Methods
        
        mp1.putAll(mp2);
        system.debug(mp1);
        
         system.debug(mp1.get(21));

    }
}