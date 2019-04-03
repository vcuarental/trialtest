Public class OpportunityOperations2{
    //*****************Inserted text*********
    //*****************Inserted text 2*********
    Public static Opportunity setDefaultAccoun(Opportunity opp){
    
        If (opp.AccountId == null){
            account accdef =[SELECT Id, Name from Account where Name='sForce']; 
            opp.AccountID = accdef.id;
            }
            return opp;
    }
    Public static Opportunity setDefaultLeadSource(Opportunity opp){
        if (opp.LeadSource == 'Web'){
        // Comments
            opp.LeadSource = 'Other';
        }
        return opp;
    }
}