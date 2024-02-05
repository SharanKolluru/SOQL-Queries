/* 
Usage: How to get the list of Profiles having access to a Specific Object. Ex: Account.
You can also tweak it a bit to check - If a specific Profile has access to a specific object and we can also check if CRUD permissions exist on an object in runtime. 
*/

List<PermissionSet> permissions = [SELECT Profile.Name FROM Permissionset WHERE Isownedbyprofile = true AND Id IN (SELECT ParentId FROM ObjectPermissions WHERE PermissionsCreate = true
AND PermissionsRead = true AND PermissionsEdit = true AND PermissionsDelete = true AND SObjectType = 'Account')
ORDER BY Profile.Name];

System.debug('Account CURD Permissions' +permissions);
