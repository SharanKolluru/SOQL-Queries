👉 Event Usage Metrics for the Last 24 Hours:-

SELECT Name, StartDate, EndDate, Value FROM PlatformEventUsageMetric WHERE StartDate = LAST_N_DAYS:1

👉 Platform Event Subscribers:-

SELECT ExternalId, Name, Position, Status, Tip FROM EventBusSubscriber

👉 Platform Event Channel Members:-

SELECT Id, DeveloperName, EventChannel, SelectedEntity FROM PlatformEventChannelMember
