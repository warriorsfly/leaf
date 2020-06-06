import 'package:flutter/cupertino.dart';
import 'package:leaf/screens/activity.dart';
import 'package:leaf/screens/news_feed.dart';
import 'package:leaf/screens/plan.dart';
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
              icon: Icon(CupertinoIcons.double_music_note),
              title: Text('News Feed')),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              activeIcon: Icon(CupertinoIcons.person_solid),
              title: Text('Progress')),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              activeIcon: Icon(CupertinoIcons.person_solid),
              title: Text('Activity')),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              activeIcon: Icon(CupertinoIcons.person_solid),
              title: Text('Plan')),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              activeIcon: Icon(CupertinoIcons.person_solid),
              title: Text('Profile')),
        ],
      ),
      tabBuilder: (context, index) {
        assert(context != null);
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (_) => NewsFeedScreen(),
            );

          case 1:
            return CupertinoTabView(
              builder: (_) => ProgressScreen(),
            );

          case 2:
            return CupertinoTabView(
              builder: (_) => ActivityScreen(),
            );

          case 3:
            return CupertinoTabView(
              builder: (_) => PlanScreen(),
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
