import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/widgets/custom_apbar.dart';
import 'package:notse_app/views/widgets/custom_textfield.dart';

class EditContentInCardPage extends StatefulWidget {
  const EditContentInCardPage({super.key, 
   required this.note
  });
  final NoteModel note;
  @override
  State<EditContentInCardPage> createState() => _EditContentInCardPageState();
}

class _EditContentInCardPageState extends State<EditContentInCardPage> {
  @override
  String? title , content;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomApbar(
            ontap: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fechAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note', 
            icon: Icons.check,
          ),
          SizedBox(height: 50,),
          CustomTextField(
            onChange: (value)
            {
              title = value;
            },
            customHint: widget.note.title,
            ),
          SizedBox(height: 24,),
          CustomTextField(
            onChange: (value)
            {
              content = value;
            },
            customHint: widget.note.subtitle ,
            maxlines: 4,
            ),
        ],
      ),
    );
  }
}