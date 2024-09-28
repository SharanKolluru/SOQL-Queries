👉 SOQL Queries on Object In Salesforce To Get all Field Definition (Standard & Custom Fields):
  
SELECT QualifiedApiName, Label, DeveloperName, Description, DataType, ExtraTypeInfo, Length, Precision, Scale 
FROM FieldDefinition 
WHERE EntityDefinition.QualifiedApiName = 'Lead'
