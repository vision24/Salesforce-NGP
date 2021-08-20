public class S_CControl_CustomPagination 
{
    private Integer TotalRecs=0;
    private Integer OffsetSize=0;
    private Integer LimitSize=5;
    
    public S_CControl_CustomPagination()
    {
        TotalRecs=[Select COUNT() from Account];
    }
    public List<Account> getacclist()
    {
        List<Account> acc = Database.query('Select Name,Website,AnnualRevenue,Description, Type from Account LIMIT '+LimitSize+' OFFSET '+OffsetSize);
                                           
         return acc;
      }
    public void previous()
    {
        OffsetSize = OffsetSize - LimitSize;
    }
    public void next()
    {
        OffsetSize = OffsetSize + LimitSize;
    }
   }