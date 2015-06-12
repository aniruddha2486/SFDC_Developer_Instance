<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Error_Record</fullName>
        <ccEmails>sf.Error@clickandpledge.com</ccEmails>
        <description>Error Record</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ClickandPledge_Templates/Error_Record2</template>
    </alerts>
    <rules>
        <fullName>Error Record</fullName>
        <actions>
            <name>Error_Record</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(Message__c &lt;&gt; &apos;successfully transacted&apos;  &amp;&amp;  Message__c &lt;&gt; &apos;&apos;) &amp;&amp; Email__c = TRUE</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
