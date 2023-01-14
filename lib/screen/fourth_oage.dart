import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:widget_sample_program/screen/fifth_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  var _data = <String, dynamic>{};

  @override
  void initState() {
    getDeviceInfo();

    super.initState();
  }

  Future<void> getDeviceInfo() async {
    final deviceInfo = await DeviceInfoPlugin().deviceInfo;
    if (!mounted) return;
    setState(() {
      _data = deviceInfo.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FourthPage'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const FifthPage();
              },
            ),
          );
        },
      ),
      body: ListView(
        children: _data.keys.map((String property) {
          print('$property ::: ${_data[property]}');
          return Text('$property : ${_data[property]}');
        }).toList(),
      ),
    );
  }
}
