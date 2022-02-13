import 'package:flutter/material.dart';

class TodoAddPage extends StatelessWidget {
  String taskName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Add Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "タスクを入力しください。"),
              onChanged: (value) {
                taskName = value;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop(taskName);
                },
                child: const Text("リストに追加"),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop("");
                },
                child: const Text("キャンセル"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
