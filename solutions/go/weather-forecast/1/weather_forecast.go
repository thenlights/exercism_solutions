// Package weather provides weather forecast.
package weather

// CurrentCondition represents the current weather condition as a description (string).
var CurrentCondition string
// CurrentLocation represents the current location as a location name (string).
var CurrentLocation string

// Forecast returns a string description for a given city depending on a given condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
