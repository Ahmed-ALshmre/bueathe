import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class Acount extends StatefulWidget {

  @override
  _AcountState createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return Container(
        child: WebView(
            initialUrl: "https://breatheksa.com/category/gYXBN",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }),
      );
    });
  }
}
