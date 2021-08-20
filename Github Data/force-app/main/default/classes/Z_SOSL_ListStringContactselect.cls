public class Z_SOSL_ListStringContactselect {
    public Z_SOSL_ListStringContactselect()
    {
        system.debug('hello');
    }

}
/* you can select contact detail by using sql query in list string
 list<contact> con = [select id,firstname,lastname from contact];
 system.debug('The list contact size is:' + con.size());
 
for(contact f:con)
{
    system.debug('The contact details is:' + f.firstname + ''+ f.lastname + '' +f.id);
}  */