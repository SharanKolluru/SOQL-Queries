👉 Information about Installed Packages in Salesforce via SOQL Query:-
List<PackageLicense> installedPackages = [SELECT Id, NamespacePrefix, AllowedLicenses, UsedLicenses, ExpirationDate, Status FROM PackageLicense];
for (PackageLicense app : installedPackages) {
    System.debug('App Namespace: ' + app.NamespacePrefix);
	  System.debug('Allowed Licenses: ' + app.AllowedLicenses);
    System.debug('Used Licenses: ' + app.UsedLicenses);
  	System.debug('Expiration Date: ' + app.ExpirationDate);
  	System.debug('Status: ' + app.Status);
}

👉 Installed Managed Packages & Its Versions:-

SELECT Id, SubscriberPackageId, SubscriberPackage.NamespacePrefix, SubscriberPackage.Name, SubscriberPackageVersion.Id, SubscriberPackageVersion.Name, SubscriberPackageVersion.MajorVersion, SubscriberPackageVersion.MinorVersion, SubscriberPackageVersion.PatchVersion, SubscriberPackageVersion.BuildNumber FROM InstalledSubscriberPackage

👉 Managed Package Publishers:-

SELECT Id, DurableId, Name, NamespacePrefix, IsSalesforce, MajorVersion, MinorVersion FROM Publisher WHERE IsSalesforce = false LIMIT 200

👉 Managed Package Licences:-

SELECT Id, NamespacePrefix, AllowedLicenses, UsedLicenses, ExpirationDate,Status FROM PackageLicense
