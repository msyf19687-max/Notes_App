import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notse_app/const.dart';
import 'package:notse_app/views/notes_views.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(notesBox);
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'poppins',
      ),

      home: const NotesViews(),
    );
  }
}
