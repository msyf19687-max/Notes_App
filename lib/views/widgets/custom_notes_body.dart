import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_apbar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
      children: [ 
        SizedBox(height: 40,),
         CustomApbar(),
      ],
         ),
    );
  }
}

