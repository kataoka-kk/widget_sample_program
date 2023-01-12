import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_sample_program/screen/six_page.dart';

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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(width: 2, color: Colors.black),
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Text("000"),
                  Text("111"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Scaffold(
                        appBar: AppBar(
                          title: const Text("aaa"),
                        ),
                        body: const Center(
                          child: Text("これModal"),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('modal表示'),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                /* ここからアイコンの設定 */
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility_off),
                  onPressed: () {},
                ),
                /* ここまで */
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'emailAddress'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'name'),
              keyboardType: TextInputType.name,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'text'),
              keyboardType: TextInputType.text,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('へこむボタン'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('リップルだけボタン'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const SixPage();
                },
              ),
            );
          },
        ),
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
