import 'package:ticket_app/bloc/bottom_nav_events.dart';
import 'package:ticket_app/bloc/bottom_nav_states.dart';
import 'package:bloc/bloc.dart';

class BottomNavBloc extends Bloc<BottomNavBarEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavBarSelected(0)) {
    on<OnItemTapped>((event, emit) {
      print("Event happende ${event.index}");
      emit(BottomNavBarSelected(event.index));
      // emit(BottomNavBarInitial());
    });
  }
}
