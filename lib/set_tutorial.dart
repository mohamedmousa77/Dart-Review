// What is Set?
//  1. Set elements cannot be modified
//  2. Cannot access value using index But its possible to use the function named 'elementAt(index)'
//  3. Duplicated elements are not allowed.

// Creating empty set
 Set set1 = {};
 Set<int> set2 = {};
 Set set3 = <String>{};
 var set4 = Set.identity();
// Creating set with initialed items.
Set set01 = {10, 20, 40, 'mark', 'Sameh'};

// Features
// Of or From operations
// loop as for, ForEach, for in
// immutable set: the using of 'const'
// its possible to set if or for in set creating
// its possible to use spread operators (... and ...? )
 Set num = {1, 2,3}; // {1,2,3}
 Set num01 = {10, 20, ...num}; // {10, 20, 1,2,3}

// Functions and methods
// Its possible to use a length, first, last, isEmpty, isNotEmpty
// Its possible to use add('value'), addAll{'value', 'value'}
// Its possible to use remove('value'), removeAll() es. main-list.removeAll(new-list) , clear(),
// Its possible to use removeWhere, retainWhere(), retainAll()
// Its possible to use elementAt(index) in order to access the value in specific index.
// Its possible to use contain(value) will return true or false. containAll(another list), lookup(value).
// Its possible to use union() nr order to create one Set from two lists deleting the duplicated elements.
// Its possible to use intersection() in order to search for common elements between two lists.
// Its possible to use difference() to identify the values in first one not exist in second list. Ex. Set list03 = list1.difference(list2);