👉 Installed Managed Packages & Its Versions:-

SELECT Id, SubscriberPackageId, SubscriberPackage.NamespacePrefix, SubscriberPackage.Name, SubscriberPackageVersion.Id, SubscriberPackageVersion.Name, SubscriberPackageVersion.MajorVersion, SubscriberPackageVersion.MinorVersion, SubscriberPackageVersion.PatchVersion, SubscriberPackageVersion.BuildNumber FROM InstalledSubscriberPackage

👉 Managed Package Publishers:-

SELECT Id, DurableId, Name, NamespacePrefix, IsSalesforce, MajorVersion, MinorVersion FROM Publisher WHERE IsSalesforce = false LIMIT 200

👉 Managed Package Licences:-

SELECT Id, NamespacePrefix, AllowedLicenses, UsedLicenses, ExpirationDate,Status FROM PackageLicense
