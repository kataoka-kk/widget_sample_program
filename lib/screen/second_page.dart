import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../component/inner_tab_controller_stateful.dart';
import 'third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool dropIconState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const InnerTabController(
              initialIndex: 0,
              tebSpaceFlex: 1,
              freeSpaceFlex: 0,
              tabs: [
                Tab(
                    child: Text(
                  'title1',
                  style: TextStyle(color: Colors.black),
                )),
                Tab(
                    child: Text(
                  'title2',
                  style: TextStyle(color: Colors.black),
                )),
              ],
              bodies: [
                Text(
                  'test1',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'test2',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            const Divider(
              height: 8,
              color: Colors.red,
            ),
            Stack(
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerRight,
                      backgroundColor: Colors.cyan,
                      elevation: 0,
                    ),
                    child: const Text('アイコン'),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.red,
                      elevation: 0,
                    ),
                    child: const Text('↑側ボタン'),
                  ),
                ),
              ],
            ),

            /// これでデザインを色々と変更する（6.連絡ボタン）
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),

                /// この辺はボタンの領域内に侵食していく（width: 8,）
                side: const BorderSide(
                  color: Colors.black,
                  width: 8,
                ),
              ),
              child: const Text('TextButton'),
            ),
            SizedBox(
              height: 100,
              width: 200,
              child: TextButton(
                onPressed: () {
                  print('来てるけど');
                  Fluttertoast.showToast(
                      msg: 'トースト表示', backgroundColor: Colors.red);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),

                  /// この辺はボタンの領域内に侵食していく（width: 8,）
                  side: const BorderSide(
                    color: Colors.black,
                    width: 8,
                  ),
                ),
                // child: const Text('TextButton\nTextButton'),
                child: Row(
                  children: const [
                    Text('No'),
                    Text('TextButton\nTextButton\nTextButton'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: IconButton(
                color: Colors.yellow,
                icon: const Icon(Icons.cancel),
                onPressed: () {},
              ),
            ),

            /// dropdownボタン
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: dropIconState
                  ? IconButton(
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 25,
                      onPressed: () {
                        setState(() {
                          dropIconState = !dropIconState;
                        });
                      },
                    )
                  : IconButton(
                      icon: const Icon(Icons.arrow_drop_up),
                      iconSize: 25,
                      onPressed: () {
                        setState(() {
                          dropIconState = !dropIconState;
                        });
                      },
                    ),
            ),
            SizedBox(
              height: 100,
              child: TextButton(onPressed: () {}, child: const Text('child')),
            ),
            TextButton(onPressed: () {}, child: const Text('child22')),
            GestureDetector(
              onTap: () {
                print('ここよばれた１');
              },
              child: Text('child25'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const ThirdPage();
              },
            ),
          );
        },
      ),
    );
  }
}
