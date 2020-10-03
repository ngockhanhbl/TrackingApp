import 'package:flutter/material.dart';
import 'package:my_app/screens/detail_settings/font_size.dart';
import 'package:my_app/screens/detail_settings/info_app.dart';

import 'detail_settings/brightness.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: Center(
        child: ListView(
          children: <Widget> [
            Container(
              height: 50,
              color: Colors.white,
              child: 
                ListTile(
                  leading: Icon(
                    Icons.security,
                    color: Colors.lightBlue,
                  ),
                  title: Text('Account & Scure'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color : Colors.grey[350],
                    size: 16,
                  )
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 6.0,
            ),
            Container(
              color: Colors.white,
              child: 
                Column(
                  children: <Widget>[
                    ListTile (
                      leading: Icon(
                        Icons.airplay,
                        color: Colors.green[400],
                      ),
                      title: Text('Interface'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color : Colors.grey[350],
                        size: 16,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BrightnessSettings(),
                              ),
                        );
                      }
                    ),
                    
                    ListTile (
                      leading: Icon(
                        Icons.text_format,
                        color: Colors.deepPurple[300],
                      ),
                      title: Text('Font Size'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color : Colors.grey[350],
                        size: 16,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FontSizeSetting(),
                              ),
                        );
                      }
                    ),
                    
                    ListTile (
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.blue[700],

                      ),
                      title: Text('Tracking App Info'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color : Colors.grey[350],
                        size: 16,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InfoApp(),
                              ),
                        );
                      }
                    ),
                  ],
                )
            ),

            SizedBox(
              width: double.infinity,
              height: 6.0,
            ),

            Container(
              color: Colors.white,
              child: 
                Column(
                  children: <Widget>[
                    ListTile (
                      leading: Icon(
                        Icons.person_add,
                        color: Colors.teal[300],
                      ),
                      title: Text('Switch Accounts'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color : Colors.grey[350],
                        size: 16,
                      )
                    ),
                    
                    ListTile (
                      leading: Icon(
                        Icons.settings_power,
                      ),
                      title: Text('Log Out'),
                    ),
                  ],
                )
            ),
          ]
        ),
      ),
    );
  }
}
