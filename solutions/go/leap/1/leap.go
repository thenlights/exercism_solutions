// leap package has utility for checking if an year is leap
package leap

// IsLeapYear determines whether a given year is a leap year or not
func IsLeapYear(year int) bool {
	if year % 100 == 0 {
        if year % 400 == 0 {
            // if year evenly divisible by 100, year is leap ONLY if also e.d. by 400
            return true
        } else {
            return false 
        }
    } else if year % 4 == 0 {
    	// otherwise, if evenly divisible by 4, it's leap
        return true
    } else {
    	// not leap
    	return false
    }
}
