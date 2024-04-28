import 'package:flutter/material.dart';

void main(){
  var items1 = List.filled(5, 34, growable: true);
  var items2 = List.generate(5, (index) => null);


// Creating tables associated together.
  // list from another.
  // list of another.
  // list unmodifiable.

  List list1 = ['cat', 'dog', 'Rat'];
  List list2 = List.from(list1);

  // Iterating the list.
  // Simple for loop | for in loop | forEach loop.

  // Const & Immutable list.

  List list3 = const ['cat', 'dog', 'Rat'];
  const List list4 = ['cat', 'dog', 'Rat'];
  // The difference between list3 and list4:
  // In list3 its not possible to modify the element =>
  list3 = [10, 20];  // BUT I can modify the inter list
  // In list4 Its possible modify the one of element =>
  list4[0] = [10]; //  BUT its not possible to modify the inter list

  // print(list.hashcode); // to print the rote address

  // Features of list.
  // Using for and if while creating the list
  List list5 = [10 , 20, if(10>5)40, for(int e=1; e<5; e++)e, ];
  // Print ->> [10, 20, 40, 1, 2, 3, 4]

  // Spread operator (...) in list creating. calling all values in the previous list
  List list6 = [10,20,30];
  List list7 = [40,50, ...list6];
  List list8 = [60,70, ...list6,...list7];
  // Print::
  // List6 = [10, 20, 30]
  // List6 = [40, 50, 10, 20, 30]
  // List6 = [60, 70, 10, 20, 30, 40, 50, 10, 20, 30]

  // list.elementAt(index).
  // 'for in' and 'forEach'
  // list.length = 5; to indicate the list length

  // LIST PROPERTIES AND METHODS
  List<String> animals = ['Cat', 'Dog', 'Rat', 'Tiger'];
  List<String> animals2 = ['Cat', 'Dog', 'Rat', 'Tiger'];


  print('first element ${animals.first}');
  print('last element ${animals.last}');
  print('Is empty list? ${animals.isEmpty}');
  print('Is not empty list? ${animals.isNotEmpty}');

  var reversedList = animals.reversed;
  print('Reversed list $reversedList');


 // Add And Insert element - operation
  animals.add('element');
  animals.insert(1, 'element'); // I can use insert to determinate the specific index
  animals.addAll(animals2);
  animals.insertAll(2, animals2);

  // Remove an element - operation
  animals.remove('value');
  animals.removeAt('index');
  animals.removeLast();
  animals.clear();
  animals.removeRange('start index', 'end index');
  animals.removeWhere((element) {
    return element.contains('o'); // I can at this point make any condition.
  });
  animals.retainWhere((element1){
    if(element1.contains('o') ) {
      return true;
    }
    return false;
  });

  animals.indexOf('element');
  animals.lastIndexOf('element');

  // SORT
  // In order to sort disa

  var personList = [

  ];
  personList.sort((left, right){
    // return left.name.compareTo(right.name); // In order to sort the names in alfabet order
    if(left.age > right.age ){
      return 1;
    }
  return 0;
  });
  list1.shuffle(); // In order to sort randomly.
  list1.sublist('start index', 'end index'); // This method used to extract some items.

  // WHERE Method.
  // Where method can be used to identify specific items and extract it.
  // Get a function method:
  managerlist = emplyeelist.where(( employee){
    if(employee.position == 'Manager'){
      return true;
    }
    return false;
  }); // In this example we will filter and extract the Managers from employee list in managers list.


  // Here we can extract all date with specific data type from list containing mutable data with different data types:
  list.whereType<String>();

  // Reduce method is used to obtain values in list looping on them. Reduce method will return a value not a list is used mainly to obtain the performance instead of for loop
  List<int> list = [10,20,30,60];
  int sumOfReducedValue = list.reduce((value, nextValue){
    return value + nextValue;
  });
  print(sumOfReducedValue); // 160

  //Fold method, the same of Reduce but will return any type of value not only of list element's value. Using Fold method is required to set an initial value.
  int sumOfFoldValues = list.fold(5 , (int ? value, int nextValue){
    return value! + nextValue;
  });
  print (sumOfFoldValues);

  // toSet(), asMap(), toList().
  List myList = list.toList();
  print(myList);  // [10, 20, 30, 60]
  Set mySet = list.toSet();
  print(mySet); //{10, 20, 30, 60}
  Map myMap = list.asMap();
  print(myMap);// {0: 10, 1: 20, 2: 30, 3: 60}

  // Every() Vs Any():
  // Every: all element in list Vs Any: only one element on list. Typically as OR Vs AND in conditions
  List<String> fruits = ['orange', 'Limno', 'Banana', ];

  bool myCondition = fruits.any/every((value){
    return value.contains('n');
  });
  print ('myCondition = $myCondition');

  void main() {
    var items = List.generate(5, (int index) => index * index);
  }

}