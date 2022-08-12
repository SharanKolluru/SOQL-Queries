👉 **Installed managed packages and their versions:-**

SELECT Id, SubscriberPackageId, SubscriberPackage.NamespacePrefix, SubscriberPackage.Name, SubscriberPackageVersion.Id, SubscriberPackageVersion.Name, SubscriberPackageVersion.MajorVersion, SubscriberPackageVersion.MinorVersion, SubscriberPackageVersion.PatchVersion, SubscriberPackageVersion.BuildNumber FROM InstalledSubscriberPackage

👉 **Managed package publishers:-**

SELECT Id, DurableId, Name, NamespacePrefix, IsSalesforce, MajorVersion, MinorVersion FROM Publisher WHERE IsSalesforce = false LIMIT 200

👉 **Managed package licences:-**

SELECT Id, NamespacePrefix, AllowedLicenses, UsedLicenses, ExpirationDate,Status FROM PackageLicense
