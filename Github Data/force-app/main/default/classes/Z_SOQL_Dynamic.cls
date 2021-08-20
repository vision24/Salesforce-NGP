public class Z_SOQL_Dynamic 
{
  public static void mymethod20() 
  {
      String s='Select Name from Account';
      List<sOBJECT> aclist = Database.query(s);
      
      //Creating the query string dynamically
      String qr='Select ID';
      String[]fieldlist = new List<String>();
      fieldlist.add('Name');
      fieldlist.add('NumberOfEmployees');
      fieldlist.add('phone');
      
      String objName = 'Account';
      for(String f:fieldlist)
      {
          qr +=','+f;
      }
          //qr= Select ID, Name,NumberOfEmployee
         qr+= 'from'+objName;
          //qr = Select ID,Name,NumberOfEmployees,Phone from Account
         List<sOBJECT> list2 = Database.query(qr);
      
      //Query Exception
      String s1 = 'Select Name,phone from Account';
      List<sOBJECT> list3 = Database.query(s1);
  }

}