import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box

  final _myBox = Hive.box('mybox');

// run this method when the app starts
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", true],
    ];
  }

  // load the data from the database
  void loadData() {
   
      toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
