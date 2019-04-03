public class AccountOperations {
   Public static Account setDefaultDescription(Account a){
       If (a.Description != null) return a;
         Else {
                a.Description = 'Default description';    
                return a;
              }
           }
<<<<<<< HEAD
   //New methods introduced by Developer 1 working on the US-001
   public static Account setDefaultBillingAddress(Account a){//DEV 1
       a.billingstreet = 'Po Castellana, 77'; // DEV 2 updates
=======
   //New methods introduced by Developer 1 working on the US-003
   public static Account setDefaultBillingAddress(Account a){
       a.billingstreet = 'Po Castellana, 77 5th floor'; // DEV 1 updates
>>>>>>> refs/remotes/origin/feature/US-0000164
       a.billingstate = 'Madrid';
       a.billingpostalcode ='28046'; // DEV 2 updates
       return a;
       }
<<<<<<< HEAD
   public static Account setDefaultShippingAddress(Account a){//DEV 1
       a.shippingstreet = 'Po Castellana, 77'; // DEV 2 updates
=======
   public static Account setDefaultShippingAddress(Account a){
       a.shippingstreet = 'Po Castellana, 77 5th floor'; // DEV 1 updates
>>>>>>> refs/remotes/origin/feature/US-0000164
       a.shippingstate = 'Madrid';
       a.shippingpostalcode ='28046'; // DEV 2 updates
       return a;
       }
      
   public static Account setDefaultPhone(Account a) {//DEV 1
<<<<<<< HEAD
        a.Phone='666777888'; // DEV 2 updates
        return a;
       }
   public static Account setDefaultURL(Account a) { //DEV 1
       a.website = 'www.copado.com'; // DEV 2 updates
=======
        a.Phone='611111111'; // DEV 1 updates
        return a;
       }
   public static Account setDefaultURL(Account a) { //DEV 1
       a.website = 'www.copado-enterprise.com'; // DEV 1 updates
>>>>>>> refs/remotes/origin/feature/US-0000164
       return a;
       }
}