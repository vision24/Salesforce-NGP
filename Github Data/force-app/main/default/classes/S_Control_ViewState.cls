public without sharing class S_Control_ViewState 
{
    public Integer a {get;set;}
    private Integer  b {get;set;}
    Transient Integer c {get;set;}
    Private Integer   d {get;set;}
    Public opportunity opp {get;set;}
    
   public S_Control_ViewState()
   {
       a=20;
       b=30;
       c=40;
       opp = new opportunity(name='test', stagename='test');
   }
        // call this method in postback
      public void ChangeData()
      {
          if(a==20)
          {
              a=2;
          }
          if(b==30)
          {
              b=3;
          }
          if(c==40)
          {
              d=4;
          }
          else
          {
              d=40;
          }
      }

}