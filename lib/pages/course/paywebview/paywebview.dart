import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widgets/base_text_widget.dart';
import 'package:ulearning_app/pages/course/paywebview/bloc/pay_web_view_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayWebView extends StatefulWidget {
  const PayWebView({super.key});

  @override
  State<PayWebView> createState() => _PayWebViewState();
}

class _PayWebViewState extends State<PayWebView> {
  late final WebViewController webViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print('------my url is ${args['url']}-------');
    context.read<PayWebViewBloc>().add(
          TriggerWebView(url: args['url']),
        );
  }

  @override
  void dispose() {
    webViewController.clearCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayWebViewBloc, PayWebViewState>(
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar("Payment Page"),
          body: state.url == ""
              ? Container(
                  width: 50.w, height: 50.h, child: CircularProgressIndicator())
              : WebView(
                  initialUrl: state.url,
                  javascriptMode: JavascriptMode.unrestricted,
                  javascriptChannels: {
                    JavascriptChannel(
                      name: "Pay",
                      onMessageReceived: (JavascriptMessage message) {
                        print(message.message);
                        Navigator.of(context).pop(message.message);
                      },
                    ),
                  },
                  onWebViewCreated: (WebViewController w) {
                    webViewController = w;
                  },
                ),
        );
      },
    );
  }
}
