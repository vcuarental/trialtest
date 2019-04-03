<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_an_email_with_the_Apex_Test_Results_once_an_Apex_Test_Run_has_been_executed</fullName>
        <description>Send an email with the Apex Test Results once an Apex Test Run has been executed</description>
        <protected>false</protected>
        <recipients>
            <recipient>vcuarental@copa.do.demo</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Results_Email</template>
    </alerts>
    <rules>
        <fullName>Email alert text results</fullName>
        <actions>
            <name>Send_an_email_with_the_Apex_Test_Results_once_an_Apex_Test_Run_has_been_executed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
