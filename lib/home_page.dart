import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GridView Sample'),
      ),
      body: Center(
        child: GridView.count(
          //this is an example of statis Lisview
          //scrollDirection: Axis.horizontal, //Scroll Horizontally, but makes the container biiger,
          //Only two each takes the whole screen.
          shrinkWrap: true, //Leaves a space on top and bottom.
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          children: [
            getWidget(color: Colors.amber, icon: Icons.chair),
            getWidget(color: Colors.green, icon: Icons.man),
            getWidget(color: Colors.red, icon: Icons.car_crash),
            getWidget(color: Colors.purple, icon: Icons.settings),
            getWidget(color: Colors.brown, icon: Icons.wifi),
          ],
        ),
      ),
    );
  }

//Puting the arguments, marked are required to use it as a named parameters
  Widget getWidget({required Color color, required IconData icon}) {
    return Container(
      color: color,
      child: Icon(
        icon,
        size: 80,
      ),
    );
  }
}
