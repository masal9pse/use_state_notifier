import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:use_state_notifier/main.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'), //ここにテストしたいWidgetを入れる
    );
  }
}

const String title = 'sample'; //ここにテストの名前を入れる

void main() {
  testGoldens('${title}_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    //デバイスの画面サイズ(iPhone6)
    const size6 = Size(375, 667);

    await tester.pumpWidgetBuilder(const TestWidget(), surfaceSize: size6);
    await screenMatchesGolden(tester, '${title}_iphone6');
  });
}