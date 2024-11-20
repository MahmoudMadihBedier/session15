import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieHome extends StatefulWidget {
  @override
  State<LottieHome> createState() => _LottieHomeState();
}

class _LottieHomeState extends State<LottieHome> with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(
        duration: Duration(milliseconds: 300),
         vsync: this
         );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  bool isplaying = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 20,
      width: 20,
        child: InkWell(
          onTap: () {
            if (isplaying) {
              controller.reverse();
              isplaying = false;
            } else {
              controller.forward();
              isplaying = true;
            }
          },
          child: Center(
            child: Lottie.network(
              controller: controller,
                onLoaded: (compsition) {
                  controller.duration = compsition.duration;
                
                },
                "https://lottie.host/28e70dec-51e0-4423-b292-52c43146defb/o0yUGzsK0u.json"),
          ),
        ),
     
    );
  }
}
