import 'package:flutter/material.dart';
import 'package:todo_application/Notes_list.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo Application',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 35),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text('$index'),
              ),
              title: Text('Rock ranger', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
              subtitle: Text('Rock ranger is gamer and Developer uploading videos on the Youtube'),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => NotesList()));
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
