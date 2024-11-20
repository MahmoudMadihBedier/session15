import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreenHive extends StatefulWidget {
  const HomeScreenHive({super.key});

  @override
  State<HomeScreenHive> createState() => _HomeScreenHiveState();
}

class _HomeScreenHiveState extends State<HomeScreenHive> {
  final TextEditingController textController = TextEditingController();
  late Box box;
  String name = "";

  @override

  void initState() {
    // TODO: implement initState

    box = Hive.box("names");
  }

  void write() {
    if (textController.text.isNotEmpty) {
      box.put("1", textController.text);
    }
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Saved"), backgroundColor: Colors.green));
  }

  void read() {
    setState(() {
      name = box.get("1");
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(name), backgroundColor: Colors.green));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hive"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter Name"),
              controller: textController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              write();
            }, child: Text("Save")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              read();
            }, child: Text("Get Name")),
            Text("Name :$name")
          ],
        ),
      ),
    );
  }
}
