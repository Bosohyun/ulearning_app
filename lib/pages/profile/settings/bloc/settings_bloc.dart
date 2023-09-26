import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<TriggerSettings>(_triggerSettings);
  }

  void _triggerSettings(SettingsEvent event, Emitter<SettingsState> emit) {
    emit(const SettingsState());
  }
}
