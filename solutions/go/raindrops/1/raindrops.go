package raindrops

import "fmt"

func isDivisibleBy(number int, divisor int) bool {
    return number % divisor == 0
}

func isDivisibleBy3(number int) bool {
    return isDivisibleBy(number, 3)
}

func isDivisibleBy5(number int) bool {
    return isDivisibleBy(number, 5)
}

func isDivisibleBy7(number int) bool {
    return isDivisibleBy(number, 7)
}

func Convert(number int) string {
	result := ""
    if !isDivisibleBy7(number) && !isDivisibleBy5(number) && !isDivisibleBy3(number) {
        return fmt.Sprintf("%d", number)
    }
	
    if isDivisibleBy3(number) {
        result = result + "Pling"
    }
    if isDivisibleBy5(number) {
        result = result + "Plang"
    }
    if isDivisibleBy7(number) {
        result = result + "Plong"
    }
    
    return result
}
