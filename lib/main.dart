import 'dart:ui';

import 'package:flutter_view_syntax/controllers.dart';
import 'package:flutter/material.dart';
import 'package:rich_text_controller/rich_text_controller.dart';
import 'package:flutter_view_syntax/change_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RichText Controller Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RichTextControllerDemo(),
    );
  }
}

class RichTextControllerDemo extends StatefulWidget {
  @override
  _RichTextControllerDemoState createState() => _RichTextControllerDemoState();
}

class _RichTextControllerDemoState extends State<RichTextControllerDemo> {
  final double _fontScaleFactor = 1.0;
  static const  double fontSize = 12.0;
  bool expanded = true;
  static String chosenTheme = "dracula";
  static Map<dynamic,dynamic> changeTheme =new ChangeTheme().selectTheme(chosenTheme);
  static String language = "dart";
  


  static String code = r"""import 'dart:math' as math;

// Coffee class is the best!
class Coffee {
  late int _temperature;

  void heat() => _temperature = 100;
  void chill() => _temperature = -5;

  void sip() {
    final bool isTooHot = math.max(37, _temperature) > 37;
    if (isTooHot)
      print("myyy liiips!");
    else
      print("mmmmm refreshing!");
  }

  int? get temperature => temperature;
}
void main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.sip();
  coffee.chill();
  coffee.sip();


}
/* And there
        you have it */""";

  int numLines = '\n'.allMatches(code).length + 1;
  



    
  
  // static RichTextController _controller = RichTextController(
  //         patternMap: {
           

  //         RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],
  //         RegExp(r'//(.)*\n'):changeTheme["commentStyle"],


  //         RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],

  //         RegExp(r'r".*"'):changeTheme["stringStyle"],

  //         RegExp(r"r'.*'"):changeTheme["stringStyle"],
  //         RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
  //         RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
  //         RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
  //         RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],

  //          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
  //         RegExp(r'\d+'):changeTheme["numberStyle"],

  //         RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

  //         RegExp(r'@\w+'):changeTheme["keywordStyle"],

  //         RegExp(r'\babstract|\bvoid|\bimport|\bas|\bclass|\blate|\bint|\bfinal|\bbool|\bif|\belse|\bget'):changeTheme["keywordStyle"],
          
  //         RegExp(r'\w+'): changeTheme["baseStyle"],

  //         },
  //     );

  static RichTextController _controller = Controller().controller("dart", changeTheme);
  
  

  
  @override
  void initState() {
    // changeTheme =new ChangeTheme().selectTheme(chosenTheme);
    //changeTheme.selectTheme("standard");

      //    _controller = RichTextController(
      //     patternMap: {
           

      //     RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],

      //     RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
      // RegExp(r'//(.)*\n'):changeTheme["commentStyle"],

      //     RegExp(r'r".*"'):changeTheme["stringStyle"],

      //     RegExp(r"r'.*'"):changeTheme["stringStyle"],
      //     RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
      //     RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
      //     RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
      //     RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],

      //      RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
      //     RegExp(r'\d+'):changeTheme["numberStyle"],

      //     RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

      //     RegExp(r'@\w+'):changeTheme["keywordStyle"],

      //     RegExp(r'\babstract|\bvoid|\bimport|\bas|\bclass|\blate|\bint|\bfinal|\bbool|\bif|\belse|\bget'):changeTheme["keywordStyle"],
          
      //     RegExp(r'\w+'): changeTheme["baseStyle"],

      //     },
        
      //    onMatch: (List<String> matches){
           
      //    }

      // );

      _controller.text =  code;

    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var inputBoxWidth = MediaQuery.of(context).size.width*5;
    
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        color: changeTheme["backgroundColor"],
        
        
        constraints: expanded ? BoxConstraints.expand() : null,
        child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Center(
                              child: DropdownButton<String>(
                                focusColor:Colors.white,
                                value: chosenTheme,
                                //elevation: 5,
                                //style: TextStyle(color: Colors.white),
                                iconEnabledColor:Colors.black,
                                items: <String>[
                                  'standard',
                                  'dracula',
                                  'ayuLight',
                                  'ayuDark',
                                  'gravityLight',
                                  'gravityDark',
                                  'monokaiSublime',
                                  'obsidian',
                                  'oceanSunset',
                                  'vscodeDark',
                                  'vscodeLight',
                                  
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,style:TextStyle(color:Colors.black),),
                                  );
                                }).toList(),
                                hint:Text(
                                  "Please choose a langauage",
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    chosenTheme = value;
                                    changeTheme =new ChangeTheme().selectTheme(chosenTheme);

                                    String _temp = _controller.text;

                                    _controller = Controller().controller("dart", changeTheme);

                                    _controller.text = _temp;

                                    print(chosenTheme);
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Center(
                                child: DropdownButton<String>(
                                  focusColor:Colors.white,
                                  value: language,
                                  //elevation: 5,
                                  //style: TextStyle(color: Colors.white),
                                  iconEnabledColor:Colors.black,
                                  items: <String>[
                                    'dart',
                                    'c',
                                    'c#',
                                    'php',                                    
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,style:TextStyle(color:Colors.black),),
                                    );
                                  }).toList(),
                                  hint:Text(
                                    "Please choose a langauage",
                                    style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  onChanged: (String value) {
                                    setState(() {
                                      language = value;
                                      changeTheme =new ChangeTheme().selectTheme(chosenTheme);

                                      String _temp = _controller.text;

                                      _controller = Controller().controller(language, changeTheme);

                                      _controller.text = _temp;

                                      print(chosenTheme);
                                    });
                                  },
                                ),
                            ),
                          )
                        ],
                      ),
//                       DropdownButton<String>(
//   focusColor:Colors.white,
//   value: chosenTheme,
//   //elevation: 5,
//   //style: TextStyle(color: Colors.white),
//   iconEnabledColor:Colors.black,
//   items: <String>[
//     'standard',
//     'dracula',
//     'ayuLight',
//     'ayuDark',
//     'gravityLight',
//     'gravityDark',
//     'monokaiSublime',
//     'obsidian',
//     'oceanSunset',
//     'vscodeDark',
//     'vscodeLight',
    
//   ].map<DropdownMenuItem<String>>((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(value,style:TextStyle(color:Colors.black),),
//     );
//   }).toList(),
//   hint:Text(
//     "Please choose a langauage",
//     style: TextStyle(
//             color: Colors.black,
//             fontSize: 10,
//             fontWeight: FontWeight.w500),
//   ),
//   onChanged: (String value) {
//     setState(() {
//       chosenTheme = value;
//        changeTheme =new ChangeTheme().selectTheme(chosenTheme);

//        String _temp = _controller.text;

       

//       // _controller = RichTextController(
//       //       patternMap: {
             

//       //       RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],
//       //       RegExp(r'//(.)*\n'):changeTheme["commentStyle"],
//       //       RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],


//       //       RegExp(r'r".*"'):changeTheme["stringStyle"],
//       //       RegExp(r"r'.*'"):changeTheme["stringStyle"],
//       //       RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
//       //       RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
//       //       RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
//       //       RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],

//       //        RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
//       //       RegExp(r'\d+'):changeTheme["numberStyle"],

//       //       RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

//       //       RegExp(r'@\w+'):changeTheme["keywordStyle"],
//       //       RegExp(r'\babstract|\bvoid|\bimport|\bas|\bclass|\blate|\bint|\bfinal|\bbool|\bif|\belse|\bget'):changeTheme["keywordStyle"],
            
//       //       RegExp(r'\w+'): changeTheme["baseStyle"],

//       //       },
          

//       // );

//       _controller = Controller().controller("dart", changeTheme);

//       _controller.text = _temp;

//       print(chosenTheme);
//     });
//   },
// ),
                      
                      Scrollbar(
              
              
                  child: SingleChildScrollView(
                                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                                    child: Row(
                                      
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        
                        Container(
                          
                          margin: EdgeInsets.only(left: 20,  top: 25, bottom: 10),

                                              child: SingleChildScrollView(
                                            child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  for (int i = 1; i <= numLines; i++)
                                  Padding(padding: EdgeInsets.only( top:2),
                                    child: RichText(
                                      
                                      
                                        textScaleFactor: _fontScaleFactor,
                                        text: TextSpan(
                                          
                                          
                                          style: TextStyle(
                                                fontFamily: 'monospace',
                                                fontSize: fontSize, 
                                                color: changeTheme["linesCountColor"]
                                                ),
                                          text: "$i",
                                        ))),
                            ]),
                          ),
                        ),
                      VerticalDivider(width: 5),


                      Container(
                        
                        width: inputBoxWidth*7,
                
                
                        margin: EdgeInsets.only(left: 0, right: 15, top: 25, bottom: 10),
                        child: SingleChildScrollView(
                          
                                child: new  EditableText(   
                                
                                   
                                    textScaleFactor: _fontScaleFactor,     
                              autofocus: true,
                              maxLines: null,
                              backgroundCursorColor: Colors.amber,

                              keyboardType: TextInputType.multiline,
                              controller: _controller,
                              readOnly: false, cursorColor: Colors.red, focusNode: FocusNode(), style: TextStyle(color: Colors.black),
                              onChanged: (val) {
                                code = val;
                                setState(() {
                                  numLines = '\n'.allMatches(code).length + 1;
                                });
                              },
                ),
                        ),
                
                
                ),

              ]
            ),
                    ),
                  ),
            
      ),]
          ),
        ),
      )

    );
  }
}