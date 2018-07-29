import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Food List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount:2, // crossAxisCount의 값이 그리드의 열의 수를 의미한다.
          children: List.generate(12, (index) { //generate의 첫번째 아규먼트가 생성할 개수를 의미한다.
            return Center(
              child: Text(
                '음식 ${index +1}',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}