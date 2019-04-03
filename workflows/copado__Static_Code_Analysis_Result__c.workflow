<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>SCA_QA_Enable</fullName>
        <active>false</active>
        <formula>NOT(ISNULL(copado__User_Story__c  ) )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>SCA_QA_Enable_prod</fullName>
        <active>false</active>
        <formula>AND(NOT(ISNULL(copado__User_Story__c ) ), (copado__Score_v11__c   &lt;= 2)  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
