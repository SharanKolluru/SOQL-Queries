# Restrict User Access to Run Flows
What does this impact ? 
Once enabled, users will need the Run Flows or Manage Flows permission to be able to use flows. This retires the Flow User checkbox on the user record that was historically used to grant this ability.
Therefore, you need to assess whether each user with Flow User = TRUE also has the Run/Manage Flows permission. If not, grant them this permission via a permission set, permission set group, or profile.

👉 To pull a list of users with the Flow User set to TRUE, run this query:

> SELECT Id, Name, IsActive from User where UserPermissionsInteractionUser = true and IsActive = true

👉 To rule out users that already have Run or Manage Flow from their Profile, run this query:

> SELECT Id, Name, profile.PermissionsManageInteraction, profile.PermissionsRunFlow from User where Profile.PermissionsRunFlow = true or Profile.PermissionsManageInteraction = true

👉  To define users that have these permissions via a permission set, run this query:

> SELECT Id, Assignee.id, assignee.name from PermissionSetAssignment where PermissionSet.PermissionsRunFlow = true or PermissionSet.PermissionsManageInteraction = true

👉 To define users that have these permissions via a permission set group, run this query:

> SELECT id, PermissionSetGroupId, AssigneeId, Assignee.Name, PermissionSetGroup.DeveloperName from PermissionSetAssignment where PermissionSetGroupId in (select PermissionSetGroupId from PermissionSetGroupComponent where PermissionSet.PermissionsRunFlow = true or PermissionSet.PermissionsManageInteraction = true)

👉 From the result of Item #4, remove permission set groups that mute Manage Flow or Run Flow permissions:

> SELECT Id, PermissionSetId, PermissionSetGroup.DeveloperName, PermissionSetGroupId from PermissionSetGroupComponent where PermissionSetId in (select id from MutingPermissionSet where PermissionsManageInteraction = true or PermissionsRunFlow = true)
