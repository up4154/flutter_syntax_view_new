import 'package:flutter_view_syntax/change_theme.dart';
import 'package:rich_text_controller/rich_text_controller.dart';

class Controller{
  static Map<dynamic,dynamic> changeTheme =new ChangeTheme().selectTheme("dracula");


    

  controller(language, changeTheme){
    switch (language) {

      case "c":
        return RichTextController(
          patternMap: {

          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],
           

          RegExp(r'R".*"'):changeTheme["stringStyle"],          
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
         
          RegExp(r'\d+\.\d+|.\d+'):changeTheme["numberStyle"],
          RegExp(r'\d+\.\d+f|.\d+f'):changeTheme["numberStyle"],          
          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],

          RegExp(r'[\[\]{}().!=><#&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'(#ifdef)|(#ifndef)|(#if)|(#else)|(#elif)|(#endif)|(#pragma)'):changeTheme["keywordStyle"],
          
          RegExp(r'_?\binclude|\bauto|\bbreak|\bcase|\bconst|\bcontinue|\bdefault|\bdo|\belse|\benum|\bextern|\bfor|\bgoto|\bif|\binline|\bregister|\brestrict|\breturn|\bsigned|\bsizeof|\bstatic|\bstruct|\bswitch|\btypedef|\bunion|\bunsigned|\bvoid|\bvolatile|\bwhile|\bNULL|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat'):changeTheme["keywordStyle"],
          
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          RegExp(r'\w+'): changeTheme["baseStyle"],



          }
        );

      break;
      case "cpp":
        return RichTextController(
          patternMap: {

          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],
           

          RegExp(r'R".*"'):changeTheme["stringStyle"],          
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
         
          RegExp(r'\d+\.\d+|.\d+'):changeTheme["numberStyle"],
          RegExp(r'\d+\.\d+f|.\d+f'):changeTheme["numberStyle"],          
          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],

          RegExp(r'[\[\]{}().!=><#&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'(#ifdef)|(#ifndef)|(#if)|(#else)|(#elif)|(#endif)|(#pragma)'):changeTheme["keywordStyle"],
          
          RegExp(r'_?|\binclude|\balignas|\balignof|\band|\band_eq|\basm|\batomic_cancel|\batomic_commit|\batomic_noexcept|\bauto|\bbitand|\bbitor|\bbreak|\bcase|\bcatch|\bclass|\bcompl|\bconcept|\bconst|\bconsteval|\bconstexpr|\bconstini|\bconst_cast|\bcontinue|\bco_await|\bco_return|\bco_yield|\bdecltype|\bdefault|\bdelete|\bdelete[]|\bdo|\bdynamic_cast|\belse|\benum|\bexplicit|\bexport|\bextern|\bfalse|\bfor|\bfriend|\bgoto|\bif|\binline|\bmutable|\bnamespace|\bnew|\bnoexcept|\bnot|\bnot_eq|\bnullptr|\boperator|\bor|\bor_eq|\bprivate|\bprotected|\bpublic|\breflexpr|\bregister|\breinterpret_cast|\brequires|\breturn|\bsigned|\bsizeof|\bstatic|\bstatic_assert|\bstatic_cast|\bstruct|\bswitch|\bsynchronized|\btemplate|\bthis|\bthread_local|\bthrow|\btrue|\btry|\btypedef|\btypeid|\btypename|\bunion|\busing|\bvirtual|\bvolatile|\bwhile|\bxor|\bxor_eq|\bvoid|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat|\bbool|\bintmax_t|\buintmax_t|\bint8_t|\buint8_t|\bint16_t|\buint16_t|\bint32_t|\buint32_t|\bint64_t|\buint64_t|\bint_least8_t|\buint_least8_t|\bint_least16_t|\buint_least16_t|\bint_least32_t|\buint_least32_t|\bint_least64_t|\buint_least64_t|\bint_fast8_t|\buint_fast8_t|\bint_fast16_t|\buint_fast16_t|\bint_fast32_t|\buint_fast32_t|\bint_fast64_t|\buint_fast64_t|\bintptr_t|\buintptr_t'):changeTheme["keywordStyle"],
          
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          RegExp(r'\w+'): changeTheme["baseStyle"],



          }
        );

      break;  
    
      case "dart":
      return RichTextController(
          patternMap: {
           
         

          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],
          
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],
          

          // RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*(.)/'): changeTheme["commentStyle"],

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

        case "c#":
      return RichTextController(
          patternMap: {
            RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],
           

          RegExp(r'r".*"'):changeTheme["stringStyle"],

          
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
         

          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],

          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

          RegExp(r'@\w+'):changeTheme["keywordStyle"],

          RegExp(r'\babstract|\bas|\bbase|\bbool|\bbreak|\bbyte|\bcase|\bcatch|\bchar|\bchecked|\bclass|\bconst|\bcontinue|\bdecimal|\bdefault|\bdelegate|\bdo|\bdouble|\belse|\benum|\bevent|\bexplicit|\bextern|\bfalse|\bfinally|\bfixed|\bfloat|\bfor|\bforeach|\bgoto|\bif|\bimplicit|\bin|\bint|\binterface|\binternal|\bis|\block|\blong|\bnamespace|\bnew|\bnull|\bobject|\boperator|\bout|\boverride|\bparams|\bprivate|\bprotected|\bpublic|\breadonly|\bref|\breturn|\bsbyte|\bsealed|\bshort|\bsizeof|\bstackalloc|\bstatic|\bstring|\bstruct|\bswitch|\bthis|\bthrow|\btrue|\btry|\btypeof|\buint|\bulong|\bunchecked|\bunsafe|\bushort|\busing|\bvirtual|\bvoid|\bvolatile|\bwhile|\badd|\band|\balias|\bascending|\basync|\bawait|\bby|\bdescending|\bdynamic|\bequals|\bfrom|\bget|\bglobal|\bgroup|\binit|\binto|\bjoin|\blet|\bnameof|\bnint|\bnot|\bnotnull|\bnuint|\bon|\bor|\borderby|\bpartial|\brecord|\bremove|\bselect|\bset|\bvalue|\bvar|\bwith|\byield|\bclass|\binterface|\bdelegate|\brecord|\bdynamic|\bobject|\bstring|\bthis|\bpublic|\bprotected|\binternal|\bprotected|\binternal|\bprivate|\bprivate|\bprotected|\breadonly|\bstruct|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat|\bbool|\bunsigned|\bsigned|\bdecimal'):changeTheme["keywordStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],

          },
        
         //

      );

      case "php":
      return RichTextController(
          patternMap: {
           RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],

          RegExp(r'r".*"'):changeTheme["stringStyle"],

          RegExp(r"r'.*'"):changeTheme["stringStyle"],
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],

          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],

          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],

          RegExp(r'@\w+'):changeTheme["keywordStyle"],

          RegExp(r'\babstract|\bas|\bbase|\bbool|\bbreak|\bbyte|\bcase|\bcatch|\bchar|\bchecked|\bclass|\bconst|\bcontinue|\bdecimal|\bdefault|\bdelegate|\bdo|\bdouble|\belse|\benum|\bevent|\bexplicit|\bextern|\bfalse|\bfinally|\bfixed|\bfloat|\bfor|\bforeach|\bgoto|\bif|\bimplicit|\bin|\bint|\binterface|\binternal|\bis|\block|\blong|\bnamespace|\bnew|\bnull|\bobject|\boperator|\bout|\boverride|\bparams|\bprivate|\bprotected|\bpublic|\breadonly|\bref|\breturn|\bsbyte|\bsealed|\bshort|\bsizeof|\bstackalloc|\bstatic|\bstring|\bstruct|\bswitch|\bthis|\bthrow|\btrue|\btry|\btypeof|\buint|\bulong|\bunchecked|\bunsafe|\bushort|\busing|\bvirtual|\bvoid|\bvolatile|\bwhile|\badd|\band|\balias|\bascending|\basync|\bawait|\bby|\bdescending|\bdynamic|\bequals|\bfrom|\bget|\bglobal|\bgroup|\binit|\binto|\bjoin|\blet|\bnameof|\bnint|\bnot|\bnotnull|\bnuint|\bon|\bor|\borderby|\bpartial|\brecord|\bremove|\bselect|\bset|\bvalue|\bvar|\bwith|\byield|\bclass|\binterface|\bdelegate|\brecord|\bdynamic|\bobject|\bstring|\bthis|\bpublic|\bprotected|\binternal|\bprotected|\binternal|\bprivate|\bprivate|\bprotected|\breadonly|\bstruct|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat|\bbool |\bunsigned|\bsigned|\bdecimal'):changeTheme["keywordStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],

          },
        
         

      );
        
        break;
      default:
    }
  }

  

  
}
