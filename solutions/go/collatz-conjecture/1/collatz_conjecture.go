package collatzconjecture

import "errors"

func collatzConjectureStep(n int, steps int) int {
	if n == 1 {
        return steps
    } else if n % 2 == 0 {
		return collatzConjectureStep(n/2, steps+1)  
    } else {
        return collatzConjectureStep(3*n +1, steps+1)  
    }
}

func CollatzConjecture(n int) (int, error) {
	if n <= 0 {
        return 0, errors.New("Not a positive number")
    }
    result := collatzConjectureStep(n, 0)
    return result, nil

}
