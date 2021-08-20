public class API_GoogleYoutube
{
  
    public static void getList() //METHOD-1
    {
       Http http = new Http();
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://www.googleapis.com/youtube/v3/channels?apiKey='); 
       HttpResponse response = http.send(request);
       system.debug('Responsecode'+response.getStatusCode());
          if (response.getStatusCode() == 200) 
          {
 
        System.debug('response'+response.getBody());
          }

    }
}
