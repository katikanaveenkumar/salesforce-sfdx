public class testdemoapex {
    public Account acc{set;get;}
    public contact con{set;get;}
    public testdemoapex(){
        acc=new Account();
    }
    public PageReference create(){
        Integer count =[select count() from Account where name=:acc.name];
        try{
                insert acc;
                con.accountId=acc.Id;
             
        if(count>0){
            Apexpages.Message msg =new Apexpages.message(Apexpages.Severity.Error,'Duplicate Record Found');
            Apexpages.addMessage(msg);
            return null;
        }else{ Return Null;
            
            //test deployment done
            
        }
        }
        Catch(Exception ex){
            Return null;
        }
    }
}