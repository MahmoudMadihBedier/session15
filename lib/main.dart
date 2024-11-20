import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/adapters.dart';
// import 'package:lottie/lottie.dart';
// import 'package:session15/botton_nav/nav_screen.dart';
import 'package:session15/cacha_helper/cacha_data.dart';
import 'package:session15/cacha_helper/shared_home.dart';
// import 'package:session15/hive_folder/hive_home_page.dart';
// import 'package:session15/lottie_screens/lotte_feed.dart';
// import 'package:session15/lottie_screens/lottie_home.dart';
// import 'package:session15/sliding/sliding_home.dart';


Future<void> main()   async  {
  WidgetsFlutterBinding.ensureInitialized();    
     CachData.initalizeCacha();
        runApp(const MyApplecation());
}

class MyApplecation extends StatelessWidget {
  const MyApplecation({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SharedHome(),
    );
  }
}

