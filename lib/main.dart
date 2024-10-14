import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myself/myself.dart';
import 'homepage/home_page.dart';

void main() {
  runApp(MyApp());
}

// 基础设置
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
          title: 'Namer App',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          ),
          home: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  // 这里将 Namer App 换成一个 IconButton
                  leading: IconButton(
                    icon: Icon(Icons.menu), // 添加更多功能图标
                    onPressed: () {
                      // 图标点击时触发的操作
                      print('Menu button pressed');
                    },
                  ),
                  // 右侧添加一些功能图标
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // 搜索按钮点击事件
                        print('Search button pressed');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        // 更多按钮点击事件
                        print('More button pressed');
                      },
                    ),
                  ],
                ),
                body: TabBarView(children: [
                  HomePage(),
                  Myself(),
                  Myself(),
                ]),
                bottomNavigationBar: const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.waves)),
                    Tab(icon: Icon(Icons.person)),
                  ],
                  labelColor: Colors.black, // Tab 文字或图标的颜色
                ),
              ))),
    );
  }
}



class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}


