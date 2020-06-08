import 'package:flutter/cupertino.dart';
import 'package:leaf/screens/activity.dart';
import 'package:leaf/screens/work_board.dart';
import 'package:leaf/screens/profile.dart';
import 'package:leaf/screens/progress.dart';

void main() {
  runApp(LeafApp());
}

class LeafApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Leaf',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(const IconData(0xf38f,
                  fontFamily: CupertinoIcons.iconFont,
                  fontPackage: CupertinoIcons.iconFontPackage)),
              title: Text('首页')),
          const BottomNavigationBarItem(
              icon: Icon(const IconData(0xf2b5,
                  fontFamily: CupertinoIcons.iconFont,
                  fontPackage: CupertinoIcons.iconFontPackage)),
              // activeIcon: Icon(CupertinoIcons.person_solid),
              title: Text('健康视图')),
          const BottomNavigationBarItem(
              icon: Icon(const IconData(0xf3e6,
                  fontFamily: CupertinoIcons.iconFont,
                  fontPackage: CupertinoIcons.iconFontPackage)),
              // activeIcon: Icon(CupertinoIcons.ac),
              title: Text('健康管理')),
          const BottomNavigationBarItem(
              icon: Icon(const IconData(0xf41a,
                  fontFamily: CupertinoIcons.iconFont,
                  fontPackage: CupertinoIcons.iconFontPackage)),
              title: Text('我的')),
        ],
      ),
      tabBuilder: (context, index) {
        assert(context != null);
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (_) => WorkBoardScreen(),
            );

          case 1:
            return CupertinoTabView(
              builder: (_) => ProgressScreen(),
            );

          case 2:
            return CupertinoTabView(
              builder: (_) => ActivityScreen(),
            );

          default:
            return CupertinoTabView(
              builder: (_) => ProfileScreen(),
            );
        }
      },
    );
  }
}
