import 'package:flutter/material.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/widgets/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  var title;

  WebViewContainer(this.url, this.title);

  @override
  // ignore: no_logic_in_create_state
  createState() => _WebViewContainerState(url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Constant.greenColor),
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Constant.greenColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Constant.greenColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: WebView(
                  key: _key,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: _url),
            )
          ],
        ),
      ),
      drawer: drawer(context),
    );
  }
}
