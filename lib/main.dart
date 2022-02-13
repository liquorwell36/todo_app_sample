import 'package:flutter/material.dart';
import 'package:todo_app/todo_add_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(taskList[index]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(new MaterialPageRoute(builder: (context) => TodoAddPage()))
              .then((value) => {
                    setState(() {
                      if (value == "") {
                        return;
                      }
                      taskList.add(value);
                    })
              });
        },
        tooltip: 'go to todo add page',
        child: const Icon(Icons.add),
      ),
    );
  }
}
