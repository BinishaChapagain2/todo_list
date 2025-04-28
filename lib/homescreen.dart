import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  List<Todo> todos = [
    Todo(
      id: "1",
      title: "This is a demo",
      description: "Here will be description",
    ),
    Todo(
      id: "2",
      title: "This is demo 2",
      description: "Here will be desc of demo 2",
      isCompleted: true,
    ),
    Todo(
      id: "3",
      title: "This is a demo 3",
      description: "Here will be des of demo 3",
    ),
    Todo(
      id: "4",
      title: "this is a demo 4",
      description: "Here will be desc of demo 4",
      isCompleted: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todos")),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: Checkbox(
              value: todos[i].isCompleted,
              onChanged: (value) {},
            ),
            title: Text(todos[i].title),
            subtitle: Text(todos[i].description),
          );
        },
        itemCount: todos.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Form(
                    child: Column(
                      children: [
                        Text("Add Todo", style: TextStyle(fontSize: 28)),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
