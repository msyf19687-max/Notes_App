import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_add_note_buttom.dart';
import 'package:notse_app/views/widgets/custom_notes_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const AddNoteButtomSheet();
          },
        );
      },
      child:const Icon(Icons.add),),
     body:const NotesBody(),
    );
  }
}
