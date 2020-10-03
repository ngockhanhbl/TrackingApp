import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/models/font_size.dart';
import 'package:my_app/providers/preference_provider.dart';

class FontSizeSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<PreferenceProvider>(context).bloc;
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size'),
        centerTitle: true,
        leading: GestureDetector(child: Icon(CupertinoIcons.back),onTap: (){
          bloc.savePreferences();
          Navigator.of(context).pop();
        },)
      ),
      body: Center(child: ListView(children: <Widget>[
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Container(
                  constraints: BoxConstraints(minWidth: double.infinity),
                  padding: EdgeInsets.all(6.0),
                  margin: EdgeInsets.only(top:6.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: Column(
                    children: <Widget>[

                      
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Expanded(
                            child: Text("This is the preview font size", textAlign: TextAlign.right),
                          ),
                        ],
                      ),
                      SizedBox(height:10.0),
                      Row(
                        textDirection: TextDirection.ltr,
                        children: [
                          Expanded(
                            child: Text("Move the slider to adjust the best font size"),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'Font Size',
                      style: TextStyle(color: Colors.blueGrey[900],fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  StreamBuilder<FontSizeModel>(
                    stream: bloc.fontSize,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) return Container();
                      return Slider(
                        value: snapshot.data.index,
                        min:0.0,
                        max: 6.0,
                        divisions: 6,
                        label: snapshot.data.name,
                        onChanged: (double value){
                          bloc.changeFontSize(bloc.indexToFontSize(value));
                        },
                      );
                    }
                  )
                ],
              ),
            ],
          ),
        ),
      ],),),
    );
  }
}

