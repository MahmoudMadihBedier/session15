import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:session15/sliding/slid_widget.dart';

class SlidingHome extends StatelessWidget {
  const SlidingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        centerTitle: true,
        title: Text("sliding home"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlidWidget(),
           
            SlidWidget(),
            SlidWidget(),
            SlidWidget(),

          ],
        ),
      ),
    );
  }
}
