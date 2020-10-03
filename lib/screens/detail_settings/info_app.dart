import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class InfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: 
        Center(
          child: ListView(
            children: <Widget> [
              FutureBuilder(
                future: PackageInfo.fromPlatform(),
                builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
                  if(!snapshot.hasData) return Container();
                  return Column(
                    children: [
                      // Text(snapshot.data.appName),
                      // Text(snapshot.data.packageName),
                      // Text(snapshot.data.buildNumber),
                      Container(
                          height: 50,
                          color: Colors.white,
                          child: 
                            ListTile(
                              leading: Text('Current Version'),
                              trailing: Text(snapshot.data.version)
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
                                  leading: Text('Instructions For Use'),
                                ),
                                Divider(
                                  color: Colors.grey[50],
                                  height: 0,
                                  thickness: 1,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                ListTile (
                                  leading: Text('Terms & Conditions'),
                                ),
                              ],
                            )
                        ),
                    ],
                  );
                }
              )
              
            ]
          ),
        ),
    );
  }
}


