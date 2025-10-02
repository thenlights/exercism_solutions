package partyrobot

import "fmt"
import "strings"

// Welcome greets a person by name.
func Welcome(name string) string {
	return fmt.Sprintf("Welcome to my party, %s!", strings.Title(name))
}

// HappyBirthday wishes happy birthday to the birthday person and exclaims their age.
func HappyBirthday(name string, age int) string {
	return fmt.Sprintf("Happy birthday %s! You are now %d years old!", strings.Title(name), age)
}

// TellTable tell people which table they have been assigned.
func TellTable(table int) string {
	return fmt.Sprintf("You have been assigned to table %03d.", table)
}

// TellDirectionAndDistance gives direction to people.
func TellDirectionAndDistance(direction string, distance float64) string {
	return fmt.Sprintf("Your table is %s, exactly %.1f meters from here.", direction, distance)
}

// TellNeighbor tell people their neighbor.
func TellNeighbor(neighbor string) string {
	return fmt.Sprintf("You will be sitting next to %s.", strings.Title(neighbor))
}

// AssignTable assigns a table to each guest.
func AssignTable(name string, table int, neighbor, direction string, distance float64) string {
	message := Welcome(name) + "\n" + TellTable(table) + " " + TellDirectionAndDistance(direction, distance) + "\n" + TellNeighbor(neighbor)
    fmt.Println(message)
    return message
}
