import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// Define the Dog data model
class Student {
  int id;
  String name;
  int age;

  Student({required this.id, required this.name, required this.age});

  /// Insert a Dog into the database

  Map<String,Object> toMap(){
    return {
      'id' : id,
      'name' : name,
      'age' : age,
    };
  }

}

/// Open the database
/// Create the dogs table
Future<void> main() async {

  final Database = openDatabase (

      join(await getDatabasesPath(), 'student_database.sd'),

            onCreate: (sd, version) {

               return sd.execute(
                  'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
               );
            },
          version: 1,
  );

  Future<void> insertDog(Student student) async {
    final sd = await Database;
    
    await sd.insert(
        'students',
        student.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
  
  var fido = Student(id: 1, name: 'Fido', age: 18);

  print(fido);

}
