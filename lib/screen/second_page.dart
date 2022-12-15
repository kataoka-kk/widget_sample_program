import 'package:flutter/material.dart';

import '../component/inner_tab_controller_stateful.dart';
import 'third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 100,
          ),
          InnerTabController(
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
        ],
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
