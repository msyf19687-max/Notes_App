import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_notes_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:const NotesBody(),
    );
  }
}
