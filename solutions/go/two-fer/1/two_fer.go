// Package twofer handles the extra cookie giveaway sentence
package twofer

// ShareWith should have a comment documenting it.
func ShareWith(name string) string {
	if name != "" {
        return "One for " + name + ", one for me."
    }
    return "One for you, one for me."
}
