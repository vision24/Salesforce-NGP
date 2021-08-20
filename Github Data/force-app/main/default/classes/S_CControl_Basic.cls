public class S_CControl_Basic 
{
 public String theText {get;set;}
 public PageReference action() 
 {
 theText = theText + theText;
 return null;
 }

}