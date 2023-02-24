SELECT CALENDAR_MONTH(CreatedDate) FROM Account WHERE CreatedDate = Last_N_Days:12 GROUP BY CALENDAR_MONTH(CreatedDate)
