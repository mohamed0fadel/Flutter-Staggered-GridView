import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staggered GridView'),),
      body: buildGrid(),
    );
  }

  Widget buildGrid() {
    return StaggeredGridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      children: <Widget>[
        childItem(
            Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            Colors.green),
        childItem(
            Icon(
              Icons.wifi,
              color: Colors.white,
            ),
            Colors.blue),
        childItem(
            Icon(
              Icons.send,
              color: Colors.white,
            ),
            Colors.deepOrangeAccent),
        childItem(
            Icon(
              Icons.panorama_wide_angle,
              color: Colors.white,
            ),
            Colors.yellow),
        childItem(
            Icon(
              Icons.map,
              color: Colors.white,
            ),
            Colors.brown),
        childItem(
            Icon(
              Icons.bluetooth,
              color: Colors.white,
            ),
            Colors.red),
        childItem(
            Icon(
              Icons.ondemand_video,
              color: Colors.white,
            ),
            Colors.deepPurple),
        childItem(
            Icon(
              Icons.battery_alert,
              color: Colors.white,
            ),
            Colors.pinkAccent),
        childItem(
            Icon(
              Icons.airline_seat_flat,
              color: Colors.white,
            ),
            Colors.indigo),
        childItem(
            Icon(
              Icons.radio,
              color: Colors.white,
            ),
            Colors.lightBlue),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 200),
        StaggeredTile.extent(2, 100),
        StaggeredTile.extent(2, 200),
        StaggeredTile.extent(1, 210),
        StaggeredTile.extent(1, 100),
        StaggeredTile.extent(1, 100),
        StaggeredTile.extent(1, 100),
        StaggeredTile.extent(3, 100),
        StaggeredTile.extent(1, 210),
        StaggeredTile.extent(4, 100),
      ],
    );
  }

  Widget childItem(Icon icon, Color color) {
    return InkWell(
      onTap: (){
        print('i\'m pressed');
      },
      child: Material(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(7)),
        elevation: 8,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
