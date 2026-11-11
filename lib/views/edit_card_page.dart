import 'package:flutter/material.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/widgets/custom_edit_content_in_card.dart';

class EditCardPage extends StatelessWidget {
  const EditCardPage({super.key, required this.note, 
  });
 final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditContentInCardPage(
        note: note,
        ),
    );
  }
}

