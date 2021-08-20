//SOQL Aggregate Function
public class Z_Practice3 {
      public static void method1()

    {
       AggregateResult ar = [Select MIN(NumberOfEmployees),COUNT(NumberOfEmployees) From Account];
        System.debug('TOTAL Employee'+ar);
    }

}