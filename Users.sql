SOQL Queries on User In Salesforce:
===================================
- Find Count of Users For Each Profile in Salesforce
SELECT count(Id), Profile.Name FROM User WHERE User.IsActive = True GROUP BY Profile.Name

- Find List of User For Each Profile using IN Operator
SELECT Id, Name, Profile.Name, IsActive From User WHERE Profile.Name IN ('System Administrator','System Administrator Plus') AND IsActive = True



