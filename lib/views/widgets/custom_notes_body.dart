import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/widgets/custom_apbar.dart';
import 'package:notse_app/views/widgets/custom_list_view.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key, 

  });

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState ()
  {
     super.initState();
    BlocProvider.of<NoteCubit>(context).fechAllNotes();
   
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
      children: [ 
        SizedBox(height: 40,),
         CustomApbar(title: 'Notes', icon: Icons.search),
        // SizedBox(height: 8,),
         Expanded(child: CustomListView(
  
          )),
      ],
         ),
    );
  }
}
