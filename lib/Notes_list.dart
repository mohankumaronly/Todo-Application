import 'package:flutter/material.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Notes', 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}