import 'package:flutter/material.dart';
import 'package:widget_sample_program/screen/fifth_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
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
      // body: Container(
      //   width: double.infinity,
      //   height: MediaQuery.of(context).size.height * 0.5,
      //   color: Colors.grey.shade300,
      //
      //   /// TableとDataTableにカラムとボディの分離スクロールができないので自作してみる
      //   child: Column(
      //     children: [
      //       /// colum部分(ヘッダー部分)
      //       Row(
      //         children: const [
      //           Expanded(
      //             flex: 2,
      //             child: Text("header1"),
      //           ),
      //           Expanded(
      //             flex: 1,
      //             child: Text("header2"),
      //           ),
      //           Expanded(
      //             flex: 3,
      //             child: Text("header3"),
      //           ),
      //           Expanded(
      //             flex: 1,
      //             child: Text("header4"),
      //           ),
      //         ],
      //       ),
      //
      //       /// こっちのcolumnはlistviewにしないといけない
      //       /// body部分
      //       SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             Container(
      //               color: Colors.white,
      //               child: Row(
      //                 children: [
      //                   const Expanded(
      //                     flex: 2,
      //                     child: Text("body1"),
      //                   ),
      //                   Expanded(
      //                     flex: 1,
      //                     child: Container(
      //                       color: Colors.yellow,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body2"),
      //                       ),
      //                     ),
      //                   ),
      //                   Expanded(
      //                     flex: 3,
      //                     child: Container(
      //                       color: Colors.red,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body3"),
      //                       ),
      //                     ),
      //                   ),
      //                   const Expanded(
      //                     flex: 1,
      //                     child: Text("body4"),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             Container(
      //               color: Colors.white,
      //               height: 100,
      //               child: Row(
      //                 children: [
      //                   const Expanded(
      //                     flex: 2,
      //                     child: Text("body1"),
      //                   ),
      //                   Expanded(
      //                     flex: 1,
      //                     child: Container(
      //                       color: Colors.yellow,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body2"),
      //                       ),
      //                     ),
      //                   ),
      //                   Expanded(
      //                     flex: 3,
      //                     child: Container(
      //                       color: Colors.red,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body3"),
      //                       ),
      //                     ),
      //                   ),
      //                   const Expanded(
      //                     flex: 1,
      //                     child: Text("body4"),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             Container(
      //               height: 50,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //                 border: Border.symmetric(
      //                   horizontal: BorderSide(width: 4),
      //                 ),
      //               ),
      //               child: Row(
      //                 children: [
      //                   const Expanded(
      //                     flex: 2,
      //                     child: Text("body1"),
      //                   ),
      //                   Expanded(
      //                     flex: 1,
      //                     child: Container(
      //                       color: Colors.yellow,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body2"),
      //                       ),
      //                     ),
      //                   ),
      //                   Expanded(
      //                     flex: 3,
      //                     child: Container(
      //                       color: Colors.red,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body3"),
      //                       ),
      //                     ),
      //                   ),
      //                   const Expanded(
      //                     flex: 1,
      //                     child: Text("body4"),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             Container(
      //               height: 450,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //                 border: Border.symmetric(
      //                   horizontal: BorderSide(width: 4),
      //                 ),
      //               ),
      //               child: Row(
      //                 children: [
      //                   const Expanded(
      //                     flex: 2,
      //                     child: Text("body1"),
      //                   ),
      //                   Expanded(
      //                     flex: 1,
      //                     child: Container(
      //                       color: Colors.yellow,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body2"),
      //                       ),
      //                     ),
      //                   ),
      //                   Expanded(
      //                     flex: 3,
      //                     child: Container(
      //                       color: Colors.red,
      //                       child: const Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text("body3"),
      //                       ),
      //                     ),
      //                   ),
      //                   const Expanded(
      //                     flex: 1,
      //                     child: Text("body4"),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
