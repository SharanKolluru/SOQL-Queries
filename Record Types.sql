Retrieving sObject RecordTypeId in Apex
========================================

✍️ Method 1: SOQL Query To Fetch List Of Record Types For an sObject (Example: Lead, Account, Contact, Opportunity....)
- SELECT Id, Name FROM RecordType WHERE sObjectType = 'Lead'
- SELECT Id, Name FROM RecordType WHERE sObjectType = 'Lead' AND DeveloperName = 'Customer' LIMIT 1

✍️ Method 2: Instead of SOQL Query, Its preferable to use Dynamic APEX to get RecordTypeId.
  
- ID RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Person Account').getRecordTypeId();
- ID RecordTypeId = Schema.getGlobalDescribe().get('Account').getDescribe().getRecordTypeInfosByName().get('Person Account').getRecordTypeId();


