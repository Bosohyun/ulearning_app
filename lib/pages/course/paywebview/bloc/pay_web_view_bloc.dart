import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pay_web_view_event.dart';
part 'pay_web_view_state.dart';

class PayWebViewBloc extends Bloc<PayWebViewEvent, PayWebViewState> {
  PayWebViewBloc() : super(PayWebViewState.initial()) {
    on<TriggerWebView>(_triggerWebView);
  }

  void _triggerWebView(TriggerWebView event, Emitter<PayWebViewState> emit) {
    emit(state.copyWith(url: event.url));
  }
}
