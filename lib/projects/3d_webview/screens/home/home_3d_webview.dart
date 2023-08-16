import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home3dWebView extends StatelessWidget {
  const Home3dWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: WebView(
                debuggingEnabled: false,
                backgroundColor: Colors.transparent,
                initialUrl:
                    'https://clara.io/player/v2/ace29858-9486-47c4-9615-2d19b050a050?wait=true',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            )
          ],
        ),
      ),
    );
  }
}
