package techpalace

import "strings"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
    fancyBorder := strings.Repeat("*", numStarsPerLine)
	return fancyBorder + "\n" + welcomeMsg + "\n" + fancyBorder
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	return strings.Trim(strings.Trim(strings.ReplaceAll(oldMsg, "*", "", ), "\n"), " ")
}
