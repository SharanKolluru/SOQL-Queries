/************************************************************************************/
/* Author       : Sharan Kolluru                                                    */
/* Created Date :                                                                   */
/* Description  : Construct SOQL Query Dynamically in APEX                          */
/************************************************************************************/
List<String> allFields = new List<String>();
Map<String,Schema.SObjectField> fieldsMap = Schema.getGlobalDescribe().get(recordId.getsobjecttype().getdescribe().getname()).getDescribe().fields.getMap();
for(Schema.SObjectField fsm : fieldsMap.values()) {
  allFields.add(fsm.getDescribe().getName());
}            

String soqlQuery = 'SELECT '+String.join(allFields, ',')+' FROM '+recordId.getsobjecttype()+' WHERE Id=\''+recordId+'\''+' LIMIT 1';
