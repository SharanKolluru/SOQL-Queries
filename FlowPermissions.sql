/*
Restrict User Access to Run Flows
What does this impact ? 
Once enabled, users will need the Run Flows or Manage Flows permission to be able to use flows. 
This retires the Flow User checkbox on the user record that was historically used to grant this ability.
Therefore, you need to assess whether each user with Flow User = TRUE also has the Run/Manage Flows permission. 
If not, grant them this permission via a permission set, permission set group, or profile.
*/

👉 To pull a list of users with the Flow User set to TRUE, run this query:

SELECT Id, Name, IsActive FROM User WHERE UserPermissionsInteractionUser = true AND IsActive = true

👉 To rule out users that already have Run or Manage Flow from their Profile, run this query:

SELECT Id, Name, Profile.PermissionsManageInteraction, Profile.PermissionsRunFlow FROM User WHERE Profile.PermissionsRunFlow = true OR Profile.PermissionsManageInteraction = true

👉  To define users that have these permissions via a permission set, run this query:

SELECT Id, Assignee.id, Assignee.Name FROM PermissionSetAssignment WHERE PermissionSet.PermissionsRunFlow = true OR PermissionSet.PermissionsManageInteraction = true

👉 To define users that have these permissions via a permission set group, run this query:

SELECT Id, PermissionSetGroupId, AssigneeId, Assignee.Name, PermissionSetGroup.DeveloperName FROM PermissionSetAssignment WHERE PermissionSetGroupId IN (SELECT PermissionSetGroupId FROM PermissionSetGroupComponent WHERE PermissionSet.PermissionsRunFlow = true OR PermissionSet.PermissionsManageInteraction = true)

👉 From the result of Item #4, remove permission set groups that mute Manage Flow or Run Flow permissions:

SELECT Id, PermissionSetId, PermissionSetGroup.DeveloperName, PermissionSetGroupId FROM PermissionSetGroupComponent WHERE PermissionSetId IN (SELECT Id FROM MutingPermissionSet WHERE PermissionsManageInteraction = true OR PermissionsRunFlow = true)
