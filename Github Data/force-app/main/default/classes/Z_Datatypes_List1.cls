public class Z_Datatypes_List1
{
   public static void mymethod5()
   {
               //you can create list [duplicate allow & Index orederd]
   list<string> colors = new list<string>();
    colors.add('blue');
    colors.add('Red');
    colors.add('Orange');
    colors.add('Red');
       system.debug('The list size is:' + colors.size());
       system.debug('the list content is:' + colors);
 
       list<Integer>  lst1 = new list<Integer>{2,4,7,9};
    system.debug(lst1);
   }
}