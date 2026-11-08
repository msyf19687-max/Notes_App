import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_state.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_to_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/widgets/custom_buttom.dart';
import 'package:notse_app/views/widgets/custom_textfield.dart';

class AddInfoToCard extends StatefulWidget {
  const AddInfoToCard({super.key});

  @override
  State<AddInfoToCard> createState() => _AddInfoToCardState();
}

class _AddInfoToCardState extends State<AddInfoToCard> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidatemode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextField(
            customHint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 24),
          CustomTextField(
            customHint: 'Subtitle',
            onSaved: (value) {
              subtitle = value;
            },
            maxlines: 4,
          ),
          SizedBox(height: 60),
          BlocBuilder<NotesCubit, NoteState>(
            builder: (context, state) {
              return CustomButtom(
                isLoading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<NotesCubit>(context).addNote(notemodel);
                  } else {
                    setState(() {
                      autovalidatemode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
