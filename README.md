# Find Missing AP Elements

`APManager.swift` contains a static method `findTheMissing` which takes an `Int` array.

* If no missing items are found in an AP, it will return an empty array. 
* If the array is not an AP then it will return `nil`

Getting Started
------

There’s no external dependencies, so just clone and run the  project (Cmd+R). 

* Unit tests cover a range of scenarios (Cmd+U)
* Example usage prints an answer to the console when the first View Controller `ViewController` is loaded.


Other notes
------

As the algorithm needs to accomodate multiple missing items it uses a recursive private method `getMissingElements` to find the missing elements after the common difference has been found.

The Technical Test Question
------

An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one or more term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing terms.

You have to write the function find_the_missing(list), list will always be at least 3 numbers. The missing term will never be the first or last one.

`find_the_missing([1, 3, 5, 9, 11, 13,17])` == `[7, 15]`

In this prokect `find_the_missing` has been renamed to `findTheMissing`
