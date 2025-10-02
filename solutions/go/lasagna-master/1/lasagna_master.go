// package lasagna offers utility functions to supòport prepration of lasagna.
// Please notice this works for fake as in the example:
// the true lasagna uses no 'noodles', mozzarella or 'sauce'
// but rather a sfoglia (pasta), besciamella and ragù
package lasagna

// the 'PreparationTime()' function returns the number of minutes required
// to prepare a lasagna based on a list of layers and an average number of
// minutes per layer. If time is passed as 0, iot will be converted to 2
func PreparationTime(layers []string, minutes int) int {
    if minutes == 0 {
        minutes = 2 // that's the default - lacking default is debatable for a lang
    }
    return len(layers) * minutes
}

// the 'Quantities()' function returns the quantity of noodles (g) and sauce (l)
func Quantities(layers []string) (int, float64) {
    noodlesAmount := 0
    sauceAmount := 0.0
    for _, layer := range layers {
        switch layer {
        	case "noodles":
        		noodlesAmount += 50
        	case "sauce":
        		sauceAmount += 0.2
        }
    }
	return noodlesAmount, sauceAmount
}
	

// the 'AddSecretIngredient()' function

func AddSecretIngredient(friendList []string, myList []string) {
    myList[len(myList)-1] = friendList[len(friendList)-1]
}

// the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, portions int) []float64 {
    scaledQuantities:= []float64{}
    for _, quantity := range(quantities) {
        scaledQuantities = append(scaledQuantities, quantity * float64(portions) / 2.0)
    }
    return scaledQuantities
}