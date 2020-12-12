import 'package:fluterdbygeo/Geolocalizacion/geolocalizacion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluterdbygeo/Database/db_page.dart';

class MenuPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database y Geolocalización"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[

          ListTile(
            title: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DBTestPage())
                  );
                },
                child: Text(
                  "Database",
                  style: TextStyle(color: Colors.white),
                ),
                height: 40.0,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
          ListTile(
            title: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample())
                  );
                },
                child: Text(
                  "Geolocalización",
                  style: TextStyle(color: Colors.white),
                ),
                height: 40.0,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          )
        ],
      ),
    );
  }
}