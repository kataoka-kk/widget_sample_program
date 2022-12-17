import 'package:flutter/material.dart';
import 'package:widget_sample_program/screen/fourth_oage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const FourthPage();
                    },
                  ),
                );
              },
              child: const Text('nextPage')),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('ThirdPage'),
            ),
          ),
        ],
      ),
    );
  }
}
