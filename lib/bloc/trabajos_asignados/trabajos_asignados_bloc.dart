import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'trabajos_asignados_event.dart';
part 'trabajos_asignados_state.dart';

class TrabajosAsignadosBloc
    extends Bloc<TrabajosAsignadosEvent, TrabajosAsignadosState> {
  TrabajosAsignadosBloc() : super(TrabajosAsignadosInitial()) {
    on<TrabajosAsignadosEvent>((event, emit) {
      // emit();
    });
  }
}
