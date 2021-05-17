import 'package:flutter/material.dart';


class ChangeTheme {

  static const  double fontSize = 12.0;

  TextStyle baseStyle;
  TextStyle numberStyle;
  TextStyle commentStyle;
  TextStyle keywordStyle;
TextStyle stringStyle;
  TextStyle punctuationStyle;
  TextStyle classStyle;
  TextStyle constantStyle;
   Color linesCountColor;
  Color backgroundColor;
  Color zoomIconColor;



  ChangeTheme({
    this.baseStyle,
    this.numberStyle,
    this.commentStyle,
    this.keywordStyle,
    this.stringStyle,
    this.punctuationStyle,
    this.classStyle,
    this.constantStyle,
    this.linesCountColor,
    this.backgroundColor,
    this.zoomIconColor,

  });

   Map<dynamic,dynamic> selectTheme(theme){
     switch (theme) {
       case "standard":

       return {
         "linesCountColor": const Color(0xFF37474F).withOpacity(.7),
      "backgroundColor": const Color(0xFFFFFFFF),
      "baseStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
      "numberStyle": const TextStyle(color: const Color(0xFF1565C0), fontFamily: 'monospace', fontSize: fontSize),
      "commentStyle": const TextStyle(color: const Color(0xFF9E9E9E), fontFamily: 'monospace', fontSize: fontSize),
      "keywordStyle": const TextStyle(color: const Color(0xFF9C27B0), fontFamily: 'monospace', fontSize: fontSize),
      "stringStyle": const TextStyle(color: const Color(0xFF43A047), fontFamily: 'monospace', fontSize: fontSize),
      "punctuationStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
      "classStyle": const TextStyle(color: const Color(0xFF512DA8), fontFamily: 'monospace', fontSize: fontSize),
      "constantStyle": const TextStyle(color: const Color(0xFF795548), fontFamily: 'monospace', fontSize: fontSize),
      "zoomIconColor": const Color(0xFF303d49),

       };        
         break;

      case "dracula":
      return {
         "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.7),
        "backgroundColor": const Color(0xFF263238),
        "baseStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
        "numberStyle": const TextStyle(color: const Color(0xFF6BC1FF), fontFamily: 'monospace', fontSize: fontSize),
        "commentStyle": const TextStyle(color: const Color(0xFF9E9E9E), fontFamily: 'monospace', fontSize: fontSize),
        "keywordStyle": const TextStyle(color: const Color(0xFFffa959), fontFamily: 'monospace', fontSize: fontSize),
        "stringStyle": const TextStyle(color: const Color(0xFF93ffab), fontFamily: 'monospace', fontSize: fontSize),
        "punctuationStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
        "classStyle": const TextStyle(color: const Color(0xFF44ba8b), fontFamily: 'monospace', fontSize: fontSize),
        "constantStyle": const TextStyle(color: const Color(0xFF795548), fontFamily: 'monospace', fontSize: fontSize),
        "zoomIconColor": const Color(0xFFFFFFFF)

      };
        break;
      
      case "ayuLight":
      return{
         "linesCountColor": const Color(0xFF37474F).withOpacity(.7),
        "backgroundColor": const Color(0xFFFAFAFA),
        "baseStyle": const TextStyle(color: const Color(0xFF202734), fontFamily: 'monospace', fontSize: fontSize),
        "numberStyle": const TextStyle(color: const Color(0xFF42BEDF), fontFamily: 'monospace', fontSize: fontSize),
        "commentStyle": const TextStyle(color: const Color(0xFFACB1B7), fontFamily: 'monospace', fontSize: fontSize),
        "keywordStyle": const TextStyle(color: const Color(0xFFFE753B), fontFamily: 'monospace', fontSize: fontSize),
        "stringStyle": const TextStyle(color: const Color(0xFF65C8E2), fontFamily: 'monospace', fontSize: fontSize),
        "punctuationStyle": const TextStyle(color: const Color(0xFFFCA535), fontFamily: 'monospace', fontSize: fontSize),
        "classStyle": const TextStyle(color: const Color(0xFFFE772F), fontFamily: 'monospace', fontSize: fontSize),
        "constantStyle": const TextStyle(color: const Color(0xFFFD713E), fontFamily: 'monospace', fontSize: fontSize),
        "zoomIconColor": const Color(0xFF202734)

      };
       case "ayuDark":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.8),
          "backgroundColor": const Color(0xFF202734),
          "baseStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFFDCC76D), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF5C6C79), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFFFFA040), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFF87D06C), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFFFCC5F), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFFFE9741), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFFF87E6E), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "gravityLight":
        return {
          "linesCountColor": const Color(0xFF37474F).withOpacity(.7),
          "backgroundColor": const Color(0xFFFAFAFA),
          "baseStyle": const TextStyle(color: const Color(0xFF202734), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFF3D94FC), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF9DA4AF), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFF0053A9), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFF4AA95B), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFE7614D), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFFA94295), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFFD15849), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFF0D1429),
        };
        break;

      case "gravityDark":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.8),
          "backgroundColor": const Color(0xFF202734),
          "baseStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFF68B3BD), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF666562), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFFC8345A), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFECB760), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFF9CC266), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFFEA3971), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFFB77ADA), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "monokaiSublime":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.7),
          "backgroundColor": const Color(0xFF272822),
          "baseStyle": const TextStyle(color: const Color(0xFF7FEC21), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFF38C9E6), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF75715E), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFFF92672), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFE6DB74), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFFCF2668), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFFAE81FF), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "obsidian":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.7),
          "backgroundColor": const Color(0xFF293134),
          "baseStyle": const TextStyle(color: const Color(0xFFE8E2B7), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFFFFCD22), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF5D7671), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFF3A76CB), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFDE5A2C), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFF93C763), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFF294F8B), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "oceanSunset":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.7),
          "backgroundColor": const Color(0xFF33353B),
          "baseStyle": const TextStyle(color: const Color(0xFFEBCB7B), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFFD08770), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF908995), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFF62AED2), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFD9C0A5), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFFFFFFF), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFF4C77A2), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFF428CB4), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "vscodeDark":
        return {
          "linesCountColor": const Color(0xFFFFFFFF).withOpacity(.7),
          "backgroundColor": const Color(0xFF1E1E1E),
          "baseStyle": const TextStyle(color: const Color(0xFFD4D4D4), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFFB5CEA8), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF6A9955), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFF569CD6), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFCE9178), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFFD4D4D4), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFF4EC9B0), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFF4FC1FF), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFFF8F6EB),
        };
        break;

      case "vscodeLight":
        return {
          "linesCountColor": const Color(0xFF000000).withOpacity(.7),
          "backgroundColor": const Color(0xFFFFFFFF),
          "baseStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
          "numberStyle": const TextStyle(color: const Color(0xFF098658), fontFamily: 'monospace', fontSize: fontSize),
          "commentStyle": const TextStyle(color: const Color(0xFF008000), fontFamily: 'monospace', fontSize: fontSize),
          "keywordStyle": const TextStyle(color: const Color(0xFF0000FF), fontFamily: 'monospace', fontSize: fontSize),
          "stringStyle": const TextStyle(color: const Color(0xFFA31515), fontFamily: 'monospace', fontSize: fontSize),
          "punctuationStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
          "classStyle": const TextStyle(color: const Color(0xFF267f99), fontFamily: 'monospace', fontSize: fontSize),
          "constantStyle": const TextStyle(color: const Color(0xFF0070C1), fontFamily: 'monospace', fontSize: fontSize),
          "zoomIconColor": const Color(0xFF0D1429),
        };
        break;
      default:
     }

     return {
      "linesCountColor": const Color(0xFF37474F).withOpacity(.7),
      "backgroundColor": const Color(0xFFFFFFFF),
      "baseStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
      "numberStyle": const TextStyle(color: const Color(0xFF1565C0), fontFamily: 'monospace', fontSize: fontSize),
      "commentStyle": const TextStyle(color: const Color(0xFF9E9E9E), fontFamily: 'monospace', fontSize: fontSize),
      "keywordStyle": const TextStyle(color: const Color(0xFF9C27B0), fontFamily: 'monospace', fontSize: fontSize),
      "stringStyle": const TextStyle(color: const Color(0xFF43A047), fontFamily: 'monospace', fontSize: fontSize),
      "punctuationStyle": const TextStyle(color: const Color(0xFF000000), fontFamily: 'monospace', fontSize: fontSize),
      "classStyle": const TextStyle(color: const Color(0xFF512DA8), fontFamily: 'monospace', fontSize: fontSize),
      "constantStyle": const TextStyle(color: const Color(0xFF795548), fontFamily: 'monospace', fontSize: fontSize),
      "zoomIconColor": const Color(0xFF303d49),
    };



  }




}