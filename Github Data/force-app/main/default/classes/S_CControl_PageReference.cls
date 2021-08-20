public with sharing class S_CControl_PageReference 
{
    public PageReference savemethod()
    {
        PageReference pgref = new PageReference('http://www.google.com');
        return pgref;
    }

}