<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Release_manager_notification_when_a_user_story_is_ready_to_be_deployed</fullName>
        <description>Release manager notification when a user story is ready to be deployed</description>
        <protected>false</protected>
        <recipients>
            <recipient>dclark@corporate.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>USStatusUpdate</fullName>
        <field>copado__Status__c</field>
        <literalValue>IN TESTING</literalValue>
        <name>USStatusUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>USStatusUpdateProd</fullName>
        <field>copado__Status__c</field>
        <literalValue>DONE / COMPLETE</literalValue>
        <name>USStatusUpdateProd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Release manager notification</fullName>
        <actions>
            <name>Release_manager_notification_when_a_user_story_is_ready_to_be_deployed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>copado__User_Story__c.copado__Promote_Change__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update status after deployment</fullName>
        <actions>
            <name>USStatusUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(copado__Project__r.Name = &apos;Move Inc.&apos;, copado__Org_Credential__r.Name =&apos;QA&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update status after deployment Prod</fullName>
        <actions>
            <name>USStatusUpdateProd</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(copado__Project__r.Name = &apos;Move Inc.&apos;, copado__Org_Credential__r.Name =&apos;Production2&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
