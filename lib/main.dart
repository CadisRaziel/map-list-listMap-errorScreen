import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  //Se estiver no modo release
  if(kReleaseMode == true) {
    ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 250,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Error release mode!:\n${details.exception}",
              ),
            ),
          ),
        ),
      ),
    );
  };
  } else {
    //se nao estiver no modo release e estiver em debug !!
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 250,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Error Debug mode!:\n${details.exception}",
              ),
            ),
          ),
        ),
      ),
    );
    };
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, dynamic> itemsMap = {"name": "vitor", "idade": 30};
  List<String> list = ["Oi", "Tchau", "Até logo"];
  List<Map<String, dynamic>> listMap = [
    {"name": "vitor", "idade": 30},
    {"name": "ariella", "idade": 2},
    {"name": "rosana", "idade": 50}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(itemsMap["email"]),),
    );

    // return Scaffold(
    //   body: Center(
    //     child: Column(children: [
    //       ListView.builder(
    //           itemCount: itemsMap.length,
    //           itemBuilder: ((context, index) {
    //             return Container(
    //               child: Text(itemsMap[index]["name"]),
    //             );
    //           }))
    //     ]),
    //   ),
    // );

    //  return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(itemsMap["name"]),
    //         Text(itemsMap["idade"].toString()),
    //       ]

    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: list.map<Widget>((e) => Text(e)).toList()
    //     ),
    //   ),
    // );
  }
}
