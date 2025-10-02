package cars

// CostPerCar is an int representing the roduction cost of a single car in dollars
const CostPerCar = 10000
// CostPerTenCars is an int representing the roduction cost of ten cars in dollars
const CostPerTenCars = 95000 


// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * (successRate/100)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate)/60)
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	groupsOfTenCars := int(carsCount/10)
    remainingCars := int(carsCount - (10 * groupsOfTenCars))
    return uint((groupsOfTenCars * CostPerTenCars) + (remainingCars * CostPerCar))
    
}
