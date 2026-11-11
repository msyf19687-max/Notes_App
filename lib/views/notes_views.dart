import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/widgets/custom_add_note_buttom.dart';
import 'package:notse_app/views/widgets/custom_notes_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            context: context,
            builder: (BuildContext context) {
              return const AddNoteButtomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body:  NotesBody(),
    );
  }
}
