import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinkOpenerScreen extends StatelessWidget {
  const LinkOpenerScreen({
    Key? key,
    required this.link,
    required this.title,
  }) : super(key: key);

  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleTextAppBar(title),
      body: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(Uri.parse(link))),
    );
  }
}
