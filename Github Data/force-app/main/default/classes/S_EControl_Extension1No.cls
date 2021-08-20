public without sharing class S_EControl_Extension1No {
    private final Account acc;
    public S_EControl_Extension1No(apexpages.StandardController stdController)
    {
        this.acc=(Account)stdController.getRecord();
    }
    
    public string getgreeting()
    {
        return 'hello' + acc.name + acc.id;
    }

}