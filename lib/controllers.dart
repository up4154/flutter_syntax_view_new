import 'package:flutter_view_syntax/change_theme.dart';
import 'package:rich_text_controller/rich_text_controller.dart';

class Controller{
  static Map<dynamic,dynamic> changeTheme =new ChangeTheme().selectTheme("dracula");


    

  controller(language, changeTheme){
    switch (language) {

      case "c":
        return RichTextController(
          patternMap: {

          }
        );

      break;
    
      case "dart":
      return RichTextController(
          patternMap: {
           

          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],
          // RegExp(r'//r".*"\n'):changeTheme["commentStyle"],


          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*(.)/'): changeTheme["commentStyle"],

          RegExp(r'r".*"'):changeTheme["stringStyle"],

          RegExp(r"r'.*'"):changeTheme["stringStyle"],
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],

           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],

          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

          RegExp(r'@\w+'):changeTheme["keywordStyle"],

          RegExp(r'\babstract|\bvoid|\bimport|\bas|\bclass|\blate|\bint|\bfinal|\bbool|\bif|\belse|\bget'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],

          },
        
         

      );
        
        break;
      default:
    }
  }

  

  
}