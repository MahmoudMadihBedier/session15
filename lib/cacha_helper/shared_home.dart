import 'package:flutter/material.dart';
import 'package:session15/cacha_helper/cacha_data.dart';

class SharedHome extends StatefulWidget {
  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
   TextEditingController textController = TextEditingController();

  String? recivedName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("shared home"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              if (textController.text.isNotEmpty) {
                CachData.setData(key: "name", value: textController.text);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Saved"),
                  backgroundColor: Colors.green,
                ));

                print(CachData.getDate(key: "name"));
              }
            },
            child: Text("save"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              String name = CachData.getDate(key: "name").toString();
              recivedName = name;
              setState(() {
                
              });
            },
            child: Text("get"),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Name : $recivedName"),
        ]),
      ),
    );
  }
}
