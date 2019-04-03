@isTest
public class OpportunityOperationsTest {
    @isTest static void testOpportunityHasDefaultDescription() {       
        // Perform test
        // New Opportunity Operations Test Class comment
        Test.startTest();
        Opportunity opp = new Opportunity(Name='Test Opp');
        Database.SaveResult result = Database.insert(opp);
        Test.stopTest();
        // Verify
        Opportunity savedOpp = [SELECT Description FROM Opportunity WHERE Id = :result.getId()];
        System.assertEquals('Default Description', savedOpp.Description);
    }
}