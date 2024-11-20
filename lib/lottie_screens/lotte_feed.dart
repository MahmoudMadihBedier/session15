import 'package:flutter/material.dart';
import 'package:session15/lottie_screens/lottie_home.dart';

class LotteFeed extends StatelessWidget {
  const LotteFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lotte Feed"),
        backgroundColor: const Color.fromARGB(255, 243, 187, 33),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/images/images.jpg"),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: LottieHome()),
                
                ],
            )
          ],
        ),
      ),
    );
  }
}
