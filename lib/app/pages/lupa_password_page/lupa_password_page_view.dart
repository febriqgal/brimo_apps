import 'dart:async';

import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class LupaPasswordPageView extends StatefulWidget {
  const LupaPasswordPageView({Key? key}) : super(key: key);

  @override
  State<LupaPasswordPageView> createState() => _LupaPasswordPageViewState();
}

class _LupaPasswordPageViewState extends State<LupaPasswordPageView> {
  bool isLoading = true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    final Completer<WebViewController> controller =
        Completer<WebViewController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lupa Password'),
      ),
      body: Stack(
        children: [
          WebView(
            key: _key,
            initialUrl: 'https://www.instagram.com/febriqgal_',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller.complete(webViewController);
            },
            onPageFinished: (String url) {
              setState(
                () {
                  isLoading = false;
                },
              );
            },
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Container(),
        ],
      ),
    );
  }
}
