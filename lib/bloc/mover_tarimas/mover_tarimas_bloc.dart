import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'mover_tarimas_event.dart';
part 'mover_tarimas_state.dart';

class MoverTarimasBloc extends Bloc<MoverTarimasEvent, MoverTarimasState> {
  MoverTarimasBloc() : super(MoverTarimasInitialState()) {
    on<MoverTarimasEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
