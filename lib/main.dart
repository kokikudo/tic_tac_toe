import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

///TODO
///マス目に番号のプロパティをつける
///ますが9つあるリストプロバイダーを作成
///ますが押された時にそのマスの番号をprintする関数を作る
///マスの状況を管理するプロバイダー
///上のプロバイダーに一列が揃った時にprintする関数を作る
///現在のプレイヤーのプロバイダーを作成
///現在のプロバイダーの値によってタップした時の画像を変える
///ユーザーを変える
///
///

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameScreen(),
    );
  }
}

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('○×ゲーム'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('の番です'),
            SizedBox(
              height: _size.height / 2,
              width: _size.width,
              child: GridView.count(
                padding: EdgeInsets.all(20),
                primary: false,
                crossAxisCount: 3,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: [
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                  Squares(),
                ],
              ),
            ),
          ],
        ));
  }
}

class Squares extends StatelessWidget {
  const Squares({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return Icon(
              Icons.fiber_manual_record,
              color: Colors.grey.shade100,
              //size: constraint.biggest.height,
            );
          },
        ),
      ),
    );
  }
}

// Icon(
//   Icons.panorama_fish_eye,
//   color: Colors.red,
// ),
// Icon(
//   Icons.close,
//   color: Colors.blue,
// ),
