import 'package:desktop_webview_window/desktop_webview_window.dart';

/**
 * @Author Cheng Pan
 * @Data 2023/12/13.
 */
class WebWindowManager {

   static late final _webview;

  static WebWindowManager? _instance;

  static WebWindowManager getInstance() {
    _instance ??= WebWindowManager._internal();
    return _instance!;
  }

  WebWindowManager._internal();

  void openWebView()async {
    _webview = await WebviewWindow.create();
    _webview.launch("https://www.bdys10.com/");
  }

  /// 返回上一页
  void backPreviousPage()async {
    if(_webview == null) {
      return;
    }
    _webview.goBack();
  }

  /// 进入下一页
  void forwardNextPage()async {
    if(_webview == null) {
      return;
    }
    _webview.goForward();
  }

  /// 重新加载当前页面
  void reloadPage()async {
    if(_webview == null) {
      return;
    }
    _webview.reload();
  }

}