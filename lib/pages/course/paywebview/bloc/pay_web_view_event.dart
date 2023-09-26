part of 'pay_web_view_bloc.dart';

sealed class PayWebViewEvent extends Equatable {
  const PayWebViewEvent();

  @override
  List<Object> get props => [];
}

class TriggerWebView extends PayWebViewEvent {
  final String url;
  const TriggerWebView({required this.url});
}
