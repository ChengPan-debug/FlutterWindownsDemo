import 'package:flutter/material.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter_video_demo/web_windowns_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (runWebViewTitleBarWidget(['电视剧'])) {
    return;
  }
  WebWindowManager.getInstance().openWebView();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
         Row(
           children: [
             IconButton(
               onPressed: (){
                 WebWindowManager.getInstance().backPreviousPage();
               },
               icon: const Icon(Icons.arrow_back),
             ),
             IconButton(
               onPressed: (){
                 WebWindowManager.getInstance().forwardNextPage();
               },
               icon: const Icon(Icons.arrow_forward),
             ),
             IconButton(
                onPressed: (){
                  WebWindowManager.getInstance().reloadPage();
                },
                icon: const Icon(Icons.refresh),
              ),
           ],
         ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
