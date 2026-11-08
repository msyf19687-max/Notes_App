import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notse_app/const.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_to_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/simple_block_observer.dart';
import 'package:notse_app/views/notes_views.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(notesBox); 
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlockObserver();

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
