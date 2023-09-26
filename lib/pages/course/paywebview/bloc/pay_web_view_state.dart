part of 'pay_web_view_bloc.dart';

class PayWebViewState extends Equatable {
  final String url;
  const PayWebViewState({
    required this.url,
  });

  factory PayWebViewState.initial() => const PayWebViewState(
        url: '',
      );

  @override
  List<Object> get props => [url];

  @override
  String toString() => 'PayWebViewState(url: $url)';

  PayWebViewState copyWith({
    //optional named parameter
    String? url,
  }) {
    return PayWebViewState(
      url: url ?? this.url,
    );
  }
}
