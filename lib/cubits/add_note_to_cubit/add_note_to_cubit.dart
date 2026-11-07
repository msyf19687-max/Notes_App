import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notse_app/const.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_state.dart';
import 'package:notse_app/models/note_model.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());


  addNote(NoteModel note) async{
    // Implementation for adding a note
    emit(AddNoteLoading());
    try {

      var noteBox = await Hive.box<NoteModel>(notesBox); 
      await noteBox.add(note);
      emit(AddNoteSuccess());

    }  catch (e) {

      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}