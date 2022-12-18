import 'dart:async';

import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  double indicatorValue = 0.0;

  late Timer timer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: LinearProgressIndicator(
                value: indicatorValue,
                semanticsLabel: 'Linear progress indicator', //インジケータのラベル名
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }

  @override
  void initState() {
    timer = Timer.periodic(
      const Duration(milliseconds: 100), // 1秒毎に定期実行
      (Timer timer) {
        setState(() {
          if (indicatorValue < 1.0) {
            indicatorValue += 0.01;
          }
        });
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
