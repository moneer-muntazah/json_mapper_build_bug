import 'package:flutter/material.dart';
import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'main.mapper.g.dart';
import 'my_model.dart';

void main() {
  initializeJsonMapper();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyModule _myModule;

  @override
  void initState() {
    super.initState();
    _myModule = JsonMapper.fromJson(
        ''' { "my_id": 42 } ''');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('_myModule id is ${_myModule.id}'),
      ),
    );
  }
}
