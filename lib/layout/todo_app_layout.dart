import 'package:c4a/modules/todo_app/archived_screen/archived_screen.dart';
import 'package:c4a/modules/todo_app/done_tasks_screen/donr_tasks.dart';
import 'package:c4a/modules/todo_app/new_tasks_screen/new_tasks.dart';
import 'package:flutter/material.dart';

class TODO_App extends StatefulWidget {
  const TODO_App({super.key});

  @override
  State<TODO_App> createState() => _TODO_AppState();
}

class _TODO_AppState extends State<TODO_App> {
  int currentIndex = 0;
  List<Widget> screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hi'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "NEW TASKS"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'DONE TASKS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: 'ARCHIVED TASKS')
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
