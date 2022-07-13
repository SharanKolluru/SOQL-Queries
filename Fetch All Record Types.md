**Retrieving sObject RecordTypeId in Apex**

**Method #1:** SOQL Query To Fetch List Of Record Types For an sObject (Example: Lead, Account, Contact, Opportunity....)
- SELECT Id, Name FROM RecordType WHERE sObjectType = 'lead'
- SELECT Id, Name FROM RecordType WHERE sObjectType = 'lead' AND DeveloperName = 'McM_Lead' LIMIT 1

![image](https://user-images.githubusercontent.com/88401843/128869488-70532290-cd39-40b3-9563-b734ab57b866.png)

**Method #2:** Instead of SOQL query, Its preferable to use Dynamic APEX to get RecordTypeId.
- ID RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Person Account').getRecordTypeId();
- ID RecordTypeId = ObjectUtility.getObjectRecordTypeId('Account' , 'PersonAccount');
- ID RecordTypeId = Schema.getGlobalDescribe().get('Account').getDescribe().getRecordTypeInfosByName().get('Person Account').getRecordTypeId();


