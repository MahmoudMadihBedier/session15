import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidWidget extends StatelessWidget {
  const SlidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Slidable(
                  endActionPane: ActionPane(
                    motion: StretchMotion(),
                    children: [
                      SlidableAction(
                        flex: 1,
                        onPressed: (value) {},
                        icon: Icons.delete,
                        backgroundColor: Colors.red,
                      )
                    ],
          
                 ),
      
                startActionPane: ActionPane(
                    motion: StretchMotion(),
                     children: [
                      SlidableAction(
                        flex: 2,
                        onPressed: (value) {},
                      icon: Icons.phone,
                      backgroundColor: Colors.green,
      
                      ),
                      SlidableAction(
                        flex: 1,
                        onPressed: (value) {},
                        icon: Icons.message,
                        backgroundColor: Colors.yellow,
      
                      
      
                      )
                      ]),
                child: Container(
                  color: Colors.grey,
                  child: ListTile(
                    title: Text("home number"),
                    subtitle: Text("065497979"),
                    leading: Icon(Icons.person),
                  ),
                ),
              ),
    );
  }
}