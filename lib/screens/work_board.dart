import 'package:flutter/cupertino.dart';

class WorkBoardScreen extends StatefulWidget {
  @override
  _WorkBoardScreenState createState() => _WorkBoardScreenState();
}

class _WorkBoardScreenState extends State<WorkBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 4,
          )
        ],
      ),
    );
  }
}
