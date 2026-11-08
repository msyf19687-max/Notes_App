import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notse_app/const.dart';
import 'package:notse_app/models/note_model.dart';

part 'note_cubit_dart_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

    fechAllNotes() async
  {
    try {

     var noteBox = await Hive.box<NoteModel>(notesBox); 
     List<NoteModel> notes = noteBox.values.toList();
     emit(NoteSuccess(notes: notes));

    }  catch (e) {

      emit(NoteFailure(errorMessage: e.toString()));
    }
  }
}
