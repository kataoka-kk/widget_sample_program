import 'package:flutter/material.dart';

import 'package:firebase_instance_id/firebase_instance_id.dart';
import 'package:flutter/services.dart';

// TODO メモ W/GooglePlayServicesUtil( 8578): com.example.widget_sample_program requires the Google Play Store, but it is missing.
// 上記の忠告文はGoogle play storeにチェックが入っているエミュレータじゃないときに出てきた。

class SixPage extends StatefulWidget {
  const SixPage({Key? key}) : super(key: key);

  @override
  State<SixPage> createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  String _appInstanceId = 'Unknown';

  @override
  void initState() {
    initPlatformState();
    super.initState();
  }

  Future<void> initPlatformState() async {
    String appInstanceId;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      appInstanceId =
          await FirebaseInstanceId.appInstanceId ?? 'Unknown instance Id';
    } on PlatformException {
      appInstanceId = 'Failed to get instance Id.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      print('appInstanceId : $appInstanceId');
      _appInstanceId = appInstanceId;
      // TODO メモ インストールの際に値が変わる（appInstanceId）
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SixPage'),
      ),
      body: Center(
        child: Text(_appInstanceId),
      ),
    );
  }
}
