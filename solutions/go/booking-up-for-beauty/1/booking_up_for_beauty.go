package booking

import "time"

// Schedule returns a time.Time from a string containing a date.
func Schedule(date string) time.Time {
    layout := "1/2/2006 15:04:05"
	t, err := time.Parse(layout, date)
    if(err != nil) {    
	    return time.Time{}
    }
    return t
}

// HasPassed returns whether a date has passed.
func HasPassed(date string) bool {
	layout := "January 2, 2006 15:04:05"
	t, _ := time.Parse(layout, date)
    now := time.Now()
    return t.Before(now)
}

// IsAfternoonAppointment returns whether a time is in the afternoon.
func IsAfternoonAppointment(date string) bool {
	layout := "Monday, January 2, 2006 15:04:05"
    t, _ := time.Parse(layout, date)
    return t.Hour() >= 12 && t.Hour() < 18
}

// Description returns a formatted string of the appointment time.
func Description(date string) string {
	t := Schedule(date)
    return "You have an appointment on " + t.Format("Monday, January 2, 2006, at 15:04.")
}

// AnniversaryDate returns a Time with this year's anniversary.
func AnniversaryDate() time.Time {
    layout := "2006-01-02 00:00:00 +0000 UTC"
    date := time.Now().Format("2006") + "-09-15 00:00:00 +0000 UTC"
	t, _ := time.Parse(layout, date)
    return t
}
