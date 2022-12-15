import 'package:flutter/material.dart';

import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget一覧'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.red,
              ),
            ),
            // TODO サーバー接続状況ボタンのデザイン作成してみる
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(color: Colors.red),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'サーバー接続状況',
                style: TextStyle(color: Colors.red),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(color: Colors.red),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'サーバー接続状況',
                style: TextStyle(color: Colors.red),
              ),
            ),

            /// 緊急連絡一覧ヘルプボタン
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline),
            ),
            GestureDetector(
              /// 横スワイプ検知
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! < 0) {
                  print('! < 0');
                  // 右から左
                } else {
                  print('else');
                  // 左から右
                }
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const SecondPage();
              },
            ),
          );
        },
      ),
    );
  }
}
