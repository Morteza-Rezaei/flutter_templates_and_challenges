import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_pages/ui/landing/bloc/landing_events.dart';
import 'package:landing_pages/ui/landing/bloc/landing_states.dart';

class LandingBlocs extends Bloc<LandingEvents, LandingStates> {
  LandingBlocs() : super(LandingStates()) {
    on<LandingEvents>(_landingEvents);
  }
  void _landingEvents(LandingEvents event, Emitter<LandingStates> emit) {
    emit(LandingStates(pageIndex: state.pageIndex));

    // print the page index
    print('Page Index: ${state.pageIndex}');
  }
}
