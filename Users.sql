SOQL Queries on User In Salesforce:
===================================
- Find Count of Users For Each Profile in Salesforce
SELECT count(Id), Profile.Name FROM User WHERE User.IsActive = True GROUP BY Profile.Name



