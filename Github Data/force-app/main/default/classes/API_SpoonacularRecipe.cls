public class API_SpoonacularRecipe
{
    private static final string SPOONACULAR_API='https://api.spoonacular.com';
    private static final string API_KEY='455b41c1edbc49eba23bf9cdf102f200';
   
    public static void getRandomRecipe() //METHOD-1
    {
       Http http = new Http();
       HttpRequest request = new HttpRequest();
           //request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=455b41c1edbc49eba23bf9cdf102f200'); this is direct or write  below line
           //DECLARE SPOONACULAR_API AND API KEY COMMON SO YOU CAN TAKE ANY METHOD WITH FEW CHANGE
       request.setEndpoint(SPOONACULAR_API+'/recipes/random?apiKey='+API_KEY);
       request.setMethod('GET');
       HttpResponse response = http.send(request);
                // If the request is successful, parse the JSON response.
       system.debug('Responsecode'+response.getStatusCode());
          if (response.getStatusCode() == 200) {
 
        System.debug('response'+response.getBody());
    }

}
    
     public static void getRecipeInformation(String receipeId)   //method-2
    {
       Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(SPOONACULAR_API+'/recipes/'+receipeId+'/information?apiKey='+API_KEY);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
			// If the request is successful, parse the JSON response.
		system.debug('Responsecode'+response.getStatusCode());
			if (response.getStatusCode() == 200) {
 
   	     System.debug('response'+response.getBody());
   	 }

	}
    
     public static void getRecipesByingredients(String ingredients) //method-3
    {
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(SPOONACULAR_API+'/recipes/findByIngredients?apiKey=' +API_KEY+ '&ingredients='+ingredients);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
			// If the request is successful, parse the JSON response.
		system.debug('Responsecode'+response.getStatusCode());
			if (response.getStatusCode() == 200) {
 
       		 System.debug('response'+response.getBody());
  	  }

	}
}