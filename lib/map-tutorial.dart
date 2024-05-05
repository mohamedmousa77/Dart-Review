// Types of Map:
//  Hash map
//  LinkedHash map
//  SplayTree map

// Creating map:
// Map.of(Another map); Map.from(Another map); Map.unmodifiable(another Map);
// In case of Map.from there is no checking on the data type. In case of Map.of the data type should be the same.
Map person = <String, dynamic>{
  'name' : 'Ahmed Salah',
  'age' : 12,
  'salary' : 5000,
  'position' : 'Manager'
};

Map person2 = Map.of(person);
Map person3 = Map.from(person);
Map person4 = Map.unmodifiable(person);

// To transform the list into map -> the same value will be the key also.
List list = [12, 10, 30, 40];
Map map = Map.fromIterable(list);
print (map); // {12: 12, 10: 10, 30: 30, 40: 40}

// Accessing the Map Iterable.
// Printing the keys
for(var key in person.keys){
  print(key); // name // age // salary // position

}
// Printing the values
for(var value in person.values){
  print(value); // Ahmed Salah   // 12  // 5000  // Manager
}

for(var entry in person.entries){
print('${entry.key} : ${entry.value}');// name : Ahmed Salah // age : 12 // salary : 5000 // position : Manager
}

// Functions: putIfAbsent('key', function(){must return the value});, addAll(AnotherMapName);
Map employee = {
  'name' : 'Mousa'
};
employee.putIfAbsent('age', ()=> 25);
employee.addAll(person);
// Functions: remove(), removeWhere(), clean()

// Conditions: containsKey('Key im looking for') => true OR false.containsValue('Value im looking for);

// Operator: Update('value', function(){must return the updated value}); UpdateAll();
// person.updateAll((key, value){
// if(key == 'age'){return  value ++}
// if(key == 'salary'){return value+199}
// }
