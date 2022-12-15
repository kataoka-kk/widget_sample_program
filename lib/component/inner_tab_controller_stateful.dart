import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// https://417.run/pg/flutter-dart/inner-tab/
/// 上記からコード拝借
class InnerTabController extends StatefulWidget {
  final int initialIndex;
  final List<Widget> tabs;
  final List<Widget> bodies;
  final int tebSpaceFlex; // タブを左寄せする場合の割合幅
  final int freeSpaceFlex; // タブを左寄せする場合の右側の割合幅

  const InnerTabController({
    Key? key,
    required this.initialIndex,
    required this.tabs,
    required this.bodies,
    this.tebSpaceFlex = 1,
    this.freeSpaceFlex = 0,
  }) : super(key: key);

  @override
  State<InnerTabController> createState() => _InnerTabControllerState();
}

class _InnerTabControllerState extends State<InnerTabController>
    with SingleTickerProviderStateMixin {
  List<GlobalKey> keys = [];
  List<double?> bodyHeights = [];
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
        vsync: this,
        length: widget.tabs.length,
        initialIndex: widget.initialIndex);

    for (int i = 0; i < widget.tabs.length; i++) {
      bodyHeights.add(null);
      keys.add(GlobalKey());
    }
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        for (int i = 0; i < widget.tabs.length; i++) {
          /// 下記のコードは下記のサイトを勉強したら理解できそう
          /// https://zenn.dev/seya/articles/f7ebcd8335eee7
          bodyHeights[i] = keys[i].currentContext?.size?.height;
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabs.length != widget.bodies.length) {
      throw Exception('tabsとbodiesとbodySizesの配列の数を同じにして下さい。');
    }
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: widget.tebSpaceFlex,
              child: TabBar(
                controller: tabController,
                tabs: widget.tabs,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            Flexible(
              flex: widget.freeSpaceFlex,
              child: const SizedBox(),
            ),
          ],
        ),
        const Divider(height: 0),
        if (bodyHeights[tabController.index] == null)
          Container(
            key: keys[tabController.index],
            alignment: Alignment.centerLeft,
            child: widget.bodies[tabController.index],
          )
        else
          SizedBox(
            height: bodyHeights[tabController.index],
            child: TabBarView(
              controller: tabController,
              children: widget.bodies,
            ),
          ),
      ],
    );
  }
}
