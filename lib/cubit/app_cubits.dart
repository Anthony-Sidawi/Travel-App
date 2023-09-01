import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';

import '../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitiateState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData()async {
    try {
      emit(LoadingState());
      places = data.getInfo();
      emit(LoadedState(places));
    } catch (e) {

    }
  }
}
