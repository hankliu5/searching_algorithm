# Searching Algorithm

This is the note of searching algorithm for CSE 21 from UCSD. In this repository, it includes
two searching algorithm:

* Linear search
* Binary search

# Linear Search
Assume we have a random integer array first. Then we search through the array one by one element. The complexity of linear search is `O(n)`

# Binary Search
Assume we have a "sorted" integer array, and then we split the array from the right middle
into two parts. If the right middle element is not the element we want, and then we compare
the element with our target. If the target is larger than the element, we use the same
strategy to search the part contains larger number(s); otherwise we search the part with
smaller number(s). The complexity of binary search is `O(log n)`

# Conclusion
If we have a sorted array, binary search is the better strategy to search an element than
linear search. However, most of the data is unsorted or nearly sorted, so if we compare the
time consumption between (unsorted array + linear search) and (sorting algorithm + binary
search), and the time complexity of most sorting algorithm is `O(n*log n)`.

The result is:

Structure | Insert | Search
--- | --- | --- |
Linear Array | `O(1)` | `O(n)`
Binary Search Tree | `O(log n)` | `O(log n)`

If we have multiple target to search, k targets for example, then the step for these two
search algorithm is:

* linear search: `O(k * n)`
* binary search: `O(n*log n + k * log n)`

As a result, if k is small, linear search is the better choice to work on. Else if k is pretty
large, use binary search is time-saving way to figure out the result.

# Future work
Construct a interface that allows user decide the size of array. Add a time counter to compare
the efficiency between these two algorithm.
