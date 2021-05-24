import 'package:flutter_view_syntax/change_theme.dart';
import 'package:rich_text_controller/rich_text_controller.dart';

class Controller {
  static Map<dynamic, dynamic> changeTheme =
      new ChangeTheme().selectTheme("dracula");

  controller(language, changeTheme) {
    switch (language) {
      case "c":
        return RichTextController(patternMap: {
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'):
              changeTheme["commentStyle"],
          RegExp(r'//(.)*\n'): changeTheme["commentStyle"],
          RegExp(r'R".*"'): changeTheme["stringStyle"],
          RegExp(r'"(?:[^"\\]|\\.)*"'): changeTheme["stringStyle"],
          RegExp(r'\d+\.\d+|.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+\.\d+f|.\d+f'): changeTheme["numberStyle"],
          RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'): changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=><#&\|\?\+\-\*/%\^~;:,]'):
              changeTheme["punctuationStyle"],
          RegExp(r'@\w+'): changeTheme["keywordStyle"],
          RegExp(r'(#ifdef)|(#ifndef)|(#if)|(#else)|(#elif)|(#endif)|(#pragma)'):
              changeTheme["keywordStyle"],
          RegExp(r'_?\binclude|\bauto|\bbreak|\bcase|\bconst|\bcontinue|\bdefault|\bdo|\belse|\benum|\bextern|\bfor|\bgoto|\bif|\binline|\bregister|\brestrict|\breturn|\bsigned|\bsizeof|\bstatic|\bstruct|\bswitch|\btypedef|\bunion|\bunsigned|\bvoid|\bvolatile|\bwhile|\bNULL|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat'):
              changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'): changeTheme["classStyle"],
          RegExp(r'\w+'): changeTheme["baseStyle"],
        });

        break;

      case "dart":
        return RichTextController(
          patternMap: {
            RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["commentStyle"],

            RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'):
                changeTheme["commentStyle"],
            RegExp(r'//(.)*\n'): changeTheme["commentStyle"],

            // RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*(.)/'): changeTheme["commentStyle"],

            RegExp(r'r".*"'): changeTheme["stringStyle"],

            RegExp(r"r'.*'"): changeTheme["stringStyle"],
            RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["stringStyle"],
            RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"): changeTheme["stringStyle"],
            RegExp(r'"(?:[^"\\]|\\.)*"'): changeTheme["stringStyle"],
            RegExp(r"'(?:[^'\\]|\\.)*'"): changeTheme["stringStyle"],

            RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
            RegExp(r'\d+'): changeTheme["numberStyle"],

            RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):
                changeTheme["punctuationStyle"],

            RegExp(r'@\w+'): changeTheme["keywordStyle"],

            RegExp(r'\bassert|\bbreak|\bcase|\bcatch|\bclass|\bconst|\bcontinue|\bdefault|\bdo|\belse|\benum|\bextends|\bfalse|\bfinal|\bfinally|\bfor|\bif|\bin|\bis|\bnew|\bnull|\brethrow|\breturn|\bsuper|\bswitch|\bthis|\bthrow|\btrue|\btry|\bvar|\bvoid|\bwhile|\bwith|\basync|\bhide|\bon|\bshow|\bsync|\babstract|\bas|\bcovariant|\bdeferred|\bdynamic|\bexport|\bextension|\bexternal|\bfactory|\bfunction|\bget|\bimplements|\bimport|\binterface|\blibrary|\bmixin|\boperator|\bpart|\bset|\bstatic|\btypedef|\bawait|\byield'):
                changeTheme["keywordStyle"],
            RegExp(r'[A-Z](\w+)'): changeTheme["classStyle"],

            RegExp(r'\w+'): changeTheme["baseStyle"],
          },
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
          
          RegExp(r'_\binclude|\balignas|\balignof|\band|\band_eq|\basm|\batomic_cancel|\batomic_commit|\batomic_noexcept|\bauto|\bbitand|\bbitor|\bbreak|\bcase|\bcatch|\bclass|\bcompl|\bconcept|\bconst|\bconsteval|\bconstexpr|\bconstini|\bconst_cast|\bcontinue|\bco_await|\bco_return|\bco_yield|\bdecltype|\bdefault|\bdelete|\bdelete[]|\bdo|\bdynamic_cast|\belse|\benum|\bexplicit|\bexport|\bextern|\bfalse|\bfor|\bfriend|\bgoto|\bif|\binline|\bmutable|\bnamespace|\bnew|\bnoexcept|\bnot|\bnot_eq|\bnullptr|\boperator|\bor|\bor_eq|\bprivate|\bprotected|\bpublic|\breflexpr|\bregister|\breinterpret_cast|\brequires|\breturn|\bsigned|\bsizeof|\bstatic|\bstatic_assert|\bstatic_cast|\bstruct|\bswitch|\bsynchronized|\btemplate|\bthis|\bthread_local|\bthrow|\btrue|\btry|\btypedef|\btypeid|\btypename|\bunion|\busing|\bvirtual|\bvolatile|\bwhile|\bxor|\bxor_eq|\bvoid|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat|\bbool|\bintmax_t|\buintmax_t|\bint8_t|\buint8_t|\bint16_t|\buint16_t|\bint32_t|\buint32_t|\bint64_t|\buint64_t|\bint_least8_t|\buint_least8_t|\bint_least16_t|\buint_least16_t|\bint_least32_t|\buint_least32_t|\bint_least64_t|\buint_least64_t|\bint_fast8_t|\buint_fast8_t|\bint_fast16_t|\buint_fast16_t|\bint_fast32_t|\buint_fast32_t|\bint_fast64_t|\buint_fast64_t|\bintptr_t|\buintptr_t'):changeTheme["keywordStyle"],
          
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          RegExp(r'\w+'): changeTheme["baseStyle"],
                      }
        );
      

      break;
      

      case "php":
        return RichTextController(
          patternMap: {
            RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
            RegExp(r'//(.)*\n'): changeTheme["commentStyle"],
            RegExp(r'r".*"'): changeTheme["stringStyle"],
            RegExp(r"r'.*'"): changeTheme["stringStyle"],
            RegExp(r'"(?:[^"\\]|\\.)*"'): changeTheme["stringStyle"],
            RegExp(r"'(?:[^'\\]|\\.)*'"): changeTheme["stringStyle"],
            RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
            RegExp(r'\d+'): changeTheme["numberStyle"],
            RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):
                changeTheme["punctuationStyle"],
            RegExp(r'@\w+'): changeTheme["keywordStyle"],
            RegExp(r'\babstract|\bas|\bbase|\bbool|\bbreak|\bbyte|\bcase|\bcatch|\bchar|\bchecked|\bclass|\bconst|\bcontinue|\bdecimal|\bdefault|\bdelegate|\bdo|\bdouble|\belse|\benum|\bevent|\bexplicit|\bextern|\bfalse|\bfinally|\bfixed|\bfloat|\bfor|\bforeach|\bgoto|\bif|\bimplicit|\bin|\bint|\binterface|\binternal|\bis|\block|\blong|\bnamespace|\bnew|\bnull|\bobject|\boperator|\bout|\boverride|\bparams|\bprivate|\bprotected|\bpublic|\breadonly|\bref|\breturn|\bsbyte|\bsealed|\bshort|\bsizeof|\bstackalloc|\bstatic|\bstring|\bstruct|\bswitch|\bthis|\bthrow|\btrue|\btry|\btypeof|\buint|\bulong|\bunchecked|\bunsafe|\bushort|\busing|\bvirtual|\bvoid|\bvolatile|\bwhile|\badd|\band|\balias|\bascending|\basync|\bawait|\bby|\bdescending|\bdynamic|\bequals|\bfrom|\bget|\bglobal|\bgroup|\binit|\binto|\bjoin|\blet|\bnameof|\bnint|\bnot|\bnotnull|\bnuint|\bon|\bor|\borderby|\bpartial|\brecord|\bremove|\bselect|\bset|\bvalue|\bvar|\bwith|\byield|\bclass|\binterface|\bdelegate|\brecord|\bdynamic|\bobject|\bstring|\bthis|\bpublic|\bprotected|\binternal|\bprotected|\binternal|\bprivate|\bprivate|\bprotected|\breadonly|\bstruct|\bchar|\bshort|\bint|\blong|\blong long|\bdouble|\bfloat|\bbool |\bunsigned|\bsigned|\bdecimal'):
                changeTheme["keywordStyle"],
            RegExp(r'[A-Z](\w+)'): changeTheme["classStyle"],
            RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        );

        break;

      case "java":{
      return RichTextController(
          patternMap: {
            
      /// Block comments
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],  
      /// Line comments
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            
         /// Multiline """String"""
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
            
            /// Multiline '''String'''
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
            /// 'String' 'value'
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],
            
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'\babstract|\|\babstract|\bassert|\bbreak|\bcase|\bcatch|\bclass|\bcontinue|\bdefault|\bdo|\belse|\benum|\bextends|\bfinal|\bfinally|\bfor|\bif|\bimplements|\bimport|\binstanceof|\binterface|\bnative|\bnew|\bpackage|\bprivate|\bprotected|\bpublic|\breturn|\bstatic|\bsuper|\bswitch|\bsynchronized|\bthrow|\bthrows|\btransient|\bvoid|\bvolatile|\bwhile|\bbyte|\bshort|\bint|\blong|\bfloat|\bdouble|\bboolean|\bchar'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
      }
      break;
      case "javascript":
      return RichTextController(
          patternMap: {
            
      /// Block comments
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],  
      /// Line comments
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            /// Raw r'String'
          RegExp(r"r'.*'"):changeTheme["stringStyle"],
            
         /// Multiline """String"""
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
            
            /// Multiline '''String'''
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
            /// 'String' 'value'
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],
            
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'\babstract|\bassert|\bbreak|\bcase|\bcatch|\bclass|\bcontinue|\bdefault|\bdo|\belse|\benum|\bextends|\bfinal|\bfinally|\bfor|\bif|\bimplements|\bimport|\binstanceof|\binterface|\bnative|\bnew|\bpackage|\bprivate|\bprotected|\bpublic|\breturn|\bstatic|\bsuper|\bswitch|\bsynchronized|\bthrow|\bthrows|\btransient|\bvoid|\bvolatile|\bwhile|\bbyte|\bshort|\bint|\blong|\bfloat|\bdouble|\bboolean|\bchar'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
        
        break;
     
          case "Rust":{
        return RichTextController(
          patternMap: {
            RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],
            RegExp(r'//(.)*\n'): changeTheme["commentStyle"],

            RegExp(r'r".*"'): changeTheme["stringStyle"],
            RegExp(r'"(?:[^"\\]|\\.)*"'): changeTheme["stringStyle"],
            RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
            RegExp(r'\d+'): changeTheme["numberStyle"],
            RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'): changeTheme["punctuationStyle"],
            RegExp(r'\bas|\buse|\bextern crate|\bbreak|\bconst|\bcontinue|\bcrate|\belse|\bif|\bif let|\benum|\bextern|\bfalse|\bfn|\bfor|\bif|\bimpl|\bin|\bfor|\blet|\bloop|\bmatch|\bmod|\bmove|\bmut|\bpub|\bimpl|\bref|\breturn|\bSelf|\bself|\bstatic|\bstruct|\bsuper|\btrait|\btrue|\btype|\bunsafe|\buse|\bwhere|\bwhile|\babstract|\balignof|\bbecome|\bbox|\bdo|\bfinal|\bmacro|\boffsetof|\boverride|\bpriv|\bproc|\bpure|\bsizeof|\btypeof|\bunsized|\bvirtual|\byield  '): changeTheme("keywordStyle"),
            RegExp(r'[A-Z](\w+)'): changeTheme["classStyle"],
            RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        );
        

      }
      break;

      case "Scala":
        return RichTextController(
          patternMap: {
            

            RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'):changeTheme["commentStyle"],
            RegExp(r'//(.)*\n'): changeTheme["commentStyle"],

            RegExp(r'r".*"'): changeTheme["stringStyle"],
            RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'): changeTheme["stringStyle"],
            RegExp(r'"(?:[^"\\]|\\.)*"'): changeTheme["stringStyle"],

            RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
            RegExp(r'\d+'): changeTheme["numberStyle"],

            RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'): changeTheme["punctuationStyle"],

           

            RegExp(r'\babstract|\bcase|\bcatch|\bclass|\bdef|\bdo|\belse|\bextends|\bfalse|\bfinal|\bfinally|\bfor|\bforSome|\bif|\bimplicit|\bimport|\blazy|\bmatch|\bnew|\bnull|\bobject|\boverride|\bpackage|\bprivate|\bprotected|\breturn|\bsealed|\bsuper|\bthis|\bthrow|\btrait|\btry|\btrue|\btype|\bval|\bvar|\bwhile|\bwith and|\byield '):
              changeTheme["keywordStyle"],
            RegExp(r'[A-Z](\w+)'): changeTheme["classStyle"],

            RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        );

        break;
         case "kotlin":
      return RichTextController(
          patternMap: {
            
      /// Block comments
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],  
      /// Line comments
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            /// Raw r'String'
          RegExp(r"r'.*'"):changeTheme["stringStyle"],
            
         /// Multiline """String"""
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
            
            /// Multiline '''String'''
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
            /// 'String' 'value'
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],
            
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'\bas|\bas?|\bbreak|\bclass|\byield|\bcontinue|\bdo|\belse|\bfalse|\bfor|\bfun|\bif|\bin|\b!in|\binterface|\bis|\b!is|\bnull|\bobject|\bpackage|\breturn|\bsuper|\bthis|\bthrow|\btrue|\btry|\btypealias|\bval|\bvar|\bwhen|\bwhile|\bby|\bcatch|\bconstructor|\bdelegrate|\bdynamic|\bfield|\bfile|\bfinally|\bget|\bimport|\binit|\bparam|\bproperty|\breceiver|\bset|\bsetparam|\bwhere|\bactual|\babstract|\bannotation|\bcompanion|\bconst|\bcrossinline|\bdata|\benum|\bexcept|\bexternal|\bfinal|\binfix|\binline|\binner|\binternal|\blateinit|\bnoinline|\bopen|\boperator|\bout|\boverride|\bprivate|\bprotected|\bpublic|\breified|\bsealed|\bsuspend|\btailrec|\bvararg|\bByte|\bShort|\bInt|\bLong|\bFloat|\bDouble|\bBoolean|\bChar'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
        
        break;
      case "swift":
      return RichTextController(
          patternMap: {
            
      /// Block comments
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],  
      /// Line comments
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            /// Raw r'String'
          RegExp(r"r'.*'"):changeTheme["stringStyle"],
            
         /// Multiline """String"""
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
            
            /// Multiline '''String'''
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
            /// 'String' 'value'
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],
            
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'\bclass|\bfunc|\blet|\bpublic|\btypealias|\bdeinit|\bimport|\boperator|\bstatic|\bvar|\benum|\bInit|\bprivate|\bstruct|\bextension|\binternal|\bprotocol|\bsubscript|\bbreak|\bdo|\bif|\bwhere|\bcase|\belse|\blet|\bin|\bwhile|\bcontinue|\bfallthrough|\breturn|\bdefault|\bfor|\bswitch|\bas|\bnil|\btrue|\b_LINE_|\bdynamicType|\bself|\b_COLUMN_|\bfalse|\bSelf|\b_FILE_|\bis|\bsuper|\b_FUNCTION_|\bassociativity|\bfinal|\blazy|\bnonmutating|\bprecedence|\bright|\bweak|\bcrossinline|\bget|\bleft|\boptional|\bprefix|\bset|\bwillSet|\bdynamic|\binfix|\bmutating|\boverride|\bprotocol|\bType|\bdidSet|\bnone|\bpostfix|\brequired|\bunowned|\bInt|\bInt8|\bUInt|\bFloat|\bDouble|\bBool|\bString|\bCharacter'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
        
        break;

         case "Ruby":
      return RichTextController(
          patternMap: {
            
      /// multiline comments
       // RegExp('(\n=begin)+(.)*(\n)*(.)*(\n=end)'): changeTheme["commentStyle"],
          RegExp('(\n=begin)+(.)*(\n)*(.)*(\n=end)'): changeTheme["commentStyle"],
      /// Line comments
          RegExp(r'#(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            /// Raw r'String'
          RegExp(r"r'.*'"):changeTheme["stringStyle"],
            
         /// Multiline """String"""
          RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'):changeTheme["stringStyle"],
            
            /// Multiline '''String'''
          RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"):changeTheme["stringStyle"],
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
            /// 'String' 'value'
          RegExp(r"'(?:[^'\\]|\\.)*'"):changeTheme["stringStyle"],
            
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          
          RegExp(r'\b__ENCODING__|\b__LINE__|\b__FILE__|\bBEGIN|\bEND|\balias|\band|\bbegin|\bbreak|\bclass|\bdef|\bdefined?|\bdo|\belse|\belsif|\bend|\bensure|\bfalse|\bfor|\bif|\bin|\bmodule|\bnext|\bnil|\bnot|\bor|\bredo|\brescue|\bretry|\breturn|\bself|\bsuper|\bthen|\btrue|\bundef|\bunless|\buntill|\bwhen|\bwhile|\byield'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
        
        break;          

        case "go":
      return RichTextController(
          patternMap: {
            
      /// Block comments
          RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'): changeTheme["commentStyle"],  
      /// Line comments
          RegExp(r'//(.)*\n'):changeTheme["commentStyle"],     
            
        /// Raw r"String"
          
          RegExp(r'r".*"'):changeTheme["stringStyle"],
            
            
         /// Multiline `String`
          RegExp(r'`(?:[^"\\]|\\(.|\n))*`'):changeTheme["stringStyle"],
            
           
            /// "String" "value"
          RegExp(r'"(?:[^"\\]|\\.)*"'):changeTheme["stringStyle"],
           
           RegExp(r'\d+\.\d+'): changeTheme["numberStyle"],
          RegExp(r'\d+'):changeTheme["numberStyle"],
          RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'):changeTheme["punctuationStyle"],
          RegExp(r'@\w+'):changeTheme["keywordStyle"],
          RegExp(r'\bint|\bint8|\bint16|\bint32|\bint64|\buint|\buint8|\buint16|\buint32|\buint64|\buintptr|\bfloat32|\bfloat64|\bcomplex128|\bcomplex64|\bbool|\bbyte|\brune|\bstring|\berror|\btrue|\bfalse|\biota|\bnil|\bmake|\blen|\bcap|\bnew|\bappend|\bcopy|\bclose|\b|\bdelete|\bcomplex
          |\breal|\bimag|\bpanic|\brecover|\break|\bdefault|\bfunc|\binterface|\bselect|\bcase|\bdefer|\bgo|\bmap|\bstruct|\bchan|\belse|\bgoto|\bpackage|\bswitch|\bconst|\bfallthrough|\bif|\brange|\btype|\bcontinue|\bfor|\bimport|\breturn|\bvar
'):changeTheme["keywordStyle"],
          RegExp(r'[A-Z](\w+)'):changeTheme["classStyle"],
          
          RegExp(r'\w+'): changeTheme["baseStyle"],
          },
        
         
      );
        
        break;

      default:
    }
  }

  

  
}
