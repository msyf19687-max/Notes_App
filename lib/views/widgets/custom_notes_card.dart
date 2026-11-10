import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notse_app/models/note_model.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.only(top: 16, bottom: 16 , left : 16,),
      decoration: BoxDecoration(
        color: Color(notes.color),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(notes.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
           ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0 , bottom: 16),
              child: Text(notes.subtitle,  
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),),
            ),
            trailing : IconButton (
              padding: EdgeInsets.only(left: 16, bottom : 24,),
              onPressed: ()
              {
                notes.delete();
                BlocProvider.of<NoteCubit>(context).fechAllNotes();
              },              
             icon: Icon(Icons.delete,
             color: Colors.black,
             size: 30,
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18,),
            child: Text(notes.date,  style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}