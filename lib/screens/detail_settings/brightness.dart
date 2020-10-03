// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BrightnessSettings extends StatefulWidget {
//   @override
//   _BrightnessSettingsState createState() => _BrightnessSettingsState();
// }

// class _BrightnessSettingsState extends State<BrightnessSettings> {
//   @override
//   Widget build(BuildContext context) {
//     final deviceHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Interface'),
//         leading: GestureDetector(child: Icon(CupertinoIcons.back),onTap: (){
//           Navigator.of(context).pop();
//         },)
//       ),
//       backgroundColor: Colors.grey[100],
//       body: Container(
//         color: Colors.white,
//         width: double.infinity,
//         height: deviceHeight / 4,
//         child: 
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                FractionallySizedBox(
//                   heightFactor: 0.6,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Image(
//                           image: AssetImage('assets/images/lightmode.png'),
//                         )
//                       ),
//                     ]
//                   )
//                 ),

//                 FractionallySizedBox(
//                   heightFactor: 0.6,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Image(
//                           image: AssetImage('assets/images/darkmode.png'),
//                         )
//                       ),
//                     ]
//                   )
//                 )
//               ],
//             )
       
//       )
//     );
//   }
// }


import 'package:flutter/material.dart';

class BrightnessSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      child: Text('data')
    );
  }
}