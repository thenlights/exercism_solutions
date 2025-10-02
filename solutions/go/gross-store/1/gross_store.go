package gross

// Units stores the Gross Store unit measurements.
func Units() map[string]int {
	units := map[string]int{}
    units["quarter_of_a_dozen"] = 3
    units["half_of_a_dozen"] = 6
    units["dozen"] = 12
    units["small_gross"] = 120
    units["gross"] = 144
    units["great_gross"] = 1728
    return units
}

// NewBill creates a new bill.
func NewBill() map[string]int {
	return map[string]int{}
}

// AddItem adds an item to customer bill.
func AddItem(bill, units map[string]int, item, unit string) bool {
	value, exist := units[unit]
    if exist != true {
        return false
    }
    bill[item] = bill[item] + value
    return true
}

// RemoveItem removes an item from customer bill.
func RemoveItem(bill, units map[string]int, item, unit string) bool {
    removeQty, exist := units[unit]
    if exist != true {
        return false
    }
    currentQty, exist := bill[item]
    if exist != true {
        return false
    }

    if(removeQty > currentQty) {
        return false
    }

    if(removeQty == currentQty) {
		delete(bill, item)
        return true
    }

    bill[item] = bill[item] - removeQty
    return true
}

// GetItem returns the quantity of an item that the customer has in his/her bill.
func GetItem(bill map[string]int, item string) (int, bool) {
    qty, exist := bill[item]
    if exist != true {
        return 0, false
    }
    return qty, true
}
