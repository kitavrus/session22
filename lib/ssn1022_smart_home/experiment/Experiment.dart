import 'package:flutter/material.dart';

class Experimental extends StatelessWidget {
  Experimental({Key? key}) : super(key: key);

  // final _router = GoRouter(initialLocation: "/", routes: [
  //   GoRoute(path: "/", builder: (context, index) => ExperimentalPage())
  // ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExperimentalPage(),
      theme: ThemeData.light(
          // useMaterial3: true,
          ),
    );
  }
}

class ExperimentalPage extends StatelessWidget {
  const ExperimentalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          key: key,
          title: Text('Item $index'),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: Colors.brown,
  //     child: BorderBottom(),
  //   );
  // }
}

class BorderBottom extends StatelessWidget {
  const BorderBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBarTheme(
      data: ButtonBarThemeData(buttonHeight: 100),
      child: Container(
        child: ButtonBarTheme(
          data: Theme.of(context).buttonBarTheme.copyWith(buttonHeight: 110),
          child: ButtonBar(
            children: [
              Builder(builder: (context) {
                final h = ButtonBarTheme.of(context).buttonHeight;
                return Text('buttonHeight: $h');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
