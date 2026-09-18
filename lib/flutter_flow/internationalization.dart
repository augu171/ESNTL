import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Views
  {
    'lgbdpbyk': {
      'es': 'REFERENCIA RÁPIDA DE PLANOS',
      'en': '',
    },
    't47lvuk0': {
      'es': 'PLANOS IZQUIERDOS',
      'en': '',
    },
    '7hbrkk9m': {
      'es': '4 CH',
      'en': '',
    },
    'c2gx9zik': {
      'es': '2 CH',
      'en': '',
    },
    'vuh4nnwq': {
      'es': '3 CH',
      'en': '',
    },
    'sdsdpsw6': {
      'es': 'TSVI',
      'en': '',
    },
    '2gdi6g2i': {
      'es': 'EJE CORTO (SAX)',
      'en': '',
    },
    '2ebvf8xg': {
      'es': 'SAX',
      'en': '',
    },
    '977yitmr': {
      'es': 'AXIAL',
      'en': '',
    },
    '85bv23og': {
      'es': 'AHA 17',
      'en': '',
    },
    'fpfhusjq': {
      'es': 'PLANOS DERECHOS',
      'en': '',
    },
    'd4w0i91m': {
      'es': '3 CH',
      'en': '',
    },
    '61y9we5e': {
      'es': '2 CH',
      'en': '',
    },
    'm21672h4': {
      'es': 'TSVD SAG',
      'en': '',
    },
    'bsqhimqx': {
      'es': 'TSVD COR',
      'en': '',
    },
    'dpshjoq4': {
      'es': 'VÁLVULAS',
      'en': '',
    },
    'h0cw0vch': {
      'es': 'Aórtica',
      'en': '',
    },
    'v78m6818': {
      'es': 'Mitral',
      'en': '',
    },
    'w6arfumm': {
      'es': 'Pulmonar',
      'en': '',
    },
    'jfsuqgsw': {
      'es': 'Tricúspide',
      'en': '',
    },
    'npjhw38b': {
      'es': 'FLUJO',
      'en': '',
    },
    'aoc7iez0': {
      'es': 'Flujo Ao',
      'en': '',
    },
    'xp6velvt': {
      'es': 'Flujo Pulm',
      'en': '',
    },
    '1isfot03': {
      'es': 'Flujo Mi',
      'en': '',
    },
    '3abkv3x8': {
      'es': 'Flujo Tric',
      'en': '',
    },
    '6lojhruf': {
      'es': 'GRANDES VASOS',
      'en': '',
    },
    'jlyycg1o': {
      'es': 'Aorta',
      'en': '',
    },
    '9rpraqfr': {
      'es': 'TAP',
      'en': '',
    },
    'j0tpbbxv': {
      'es': 'AP IZQ',
      'en': '',
    },
    'saugduf9': {
      'es': 'AP DER',
      'en': '',
    },
    '6xky0xwd': {
      'es': 'Home',
      'en': '',
    },
  },
  // LoadScreen
  {
    'djof2bil': {
      'es': 'INICIANDO',
      'en': '',
    },
    'k7kjgxd4': {
      'es': 'www.cmr-esse',
      'en': '',
    },
    'nli0259v': {
      'es': 'n',
      'en': '',
    },
    'x5fdgutf': {
      'es': 'tial.com',
      'en': '',
    },
    'z99q1lnn': {
      'es': 'V',
      'en': '',
    },
    'reb9uzrv': {
      'es': '. 1.0x',
      'en': '',
    },
    'rm9m0ikt': {
      'es': 'V',
      'en': '',
    },
    'oh17nd65': {
      'es': '. 1.0x',
      'en': '',
    },
    'qshc9tck': {
      'es': 'INICIANDO',
      'en': '',
    },
  },
  // Welcome
  {
    '5zfzmyua': {
      'es': 'V',
      'en': '',
    },
    '52a1xvew': {
      'es': '. 1.0x',
      'en': '',
    },
    'mmj94kss': {
      'es': 'Login',
      'en': '',
    },
    'ftsdfe3m': {
      'es': 'Sign Up',
      'en': '',
    },
    '36g8fv6n': {
      'es': 'IDIOMA',
      'en': '',
    },
    'fyc0mo67': {
      'es': 'INFO',
      'en': '',
    },
    'z80je93b': {
      'es': 'LEGAL',
      'en': '',
    },
  },
  // SignUp
  {
    's1ehmoax': {
      'es': 'Sign Up',
      'en': '',
    },
    '43uf4st6': {
      'es': 'Email',
      'en': '',
    },
    'pyruxrhs': {
      'es': 'Enter email address',
      'en': '',
    },
    'bgxqpwhi': {
      'es': 'Password',
      'en': '',
    },
    'y1zrjxk8': {
      'es': 'Enter password',
      'en': '',
    },
    '86smra4b': {
      'es': 'Confirm Password',
      'en': '',
    },
    'l47axjsw': {
      'es': 'Enter password',
      'en': '',
    },
    '2h4rquyx': {
      'es': 'Sign Up',
      'en': '',
    },
    'ssbpqugk': {
      'es':
          'By signing up, you agree to our Terms of Service and Privacy Policy.',
      'en': '',
    },
    '6n6piepz': {
      'es': 'Already have an account? ',
      'en': '',
    },
    'hetkd5s7': {
      'es': 'Login',
      'en': '',
    },
  },
  // LogIn
  {
    'qq5bceae': {
      'es': 'Log In',
      'en': '',
    },
    'h2mneihj': {
      'es': 'Email',
      'en': '',
    },
    '5cv59zgw': {
      'es': 'Enter email address',
      'en': '',
    },
    '6z9t4xzw': {
      'es': 'Password',
      'en': '',
    },
    '9tgosbgt': {
      'es': 'Enter password',
      'en': '',
    },
    'u2v25t0w': {
      'es': 'Forgot password?',
      'en': '',
    },
    'syyrm908': {
      'es': 'or',
      'en': '',
    },
    'wgv6dgb6': {
      'es': 'Continue with Google',
      'en': '',
    },
    'ar4u3c3f': {
      'es': 'Continue with Apple',
      'en': '',
    },
    '7kicfb9c': {
      'es': 'Don’t have an account? ',
      'en': '',
    },
    'dzhurp1u': {
      'es': 'Sign Up',
      'en': '',
    },
  },
  // Home
  {
    '1ly8u68c': {
      'es': 'HOME',
      'en': '',
    },
    'czh5fsbx': {
      'es': 'PLANNER',
      'en': '',
    },
    'rz468onh': {
      'es': 'ESSENTIAL',
      'en': '',
    },
    'yy0c6edt': {
      'es': 'GO CMR!',
      'en': '',
    },
    'u1578bo4': {
      'es': 'ASK ESNTL',
      'en': '',
    },
    '49j2ck0d': {
      'es': 'CALCS',
      'en': '',
    },
    'o0wh53qq': {
      'es': 'GAD',
      'en': '',
    },
    'm2kd5pb6': {
      'es': 'ADENO',
      'en': '',
    },
    'v6yhvowm': {
      'es': 'T1 - ECV',
      'en': '',
    },
    'kktid7y6': {
      'es': 'VOLUMES',
      'en': '',
    },
    'e7xm3vsu': {
      'es': 'Home',
      'en': '',
    },
  },
  // Protocol
  {
    'b0ybe3fe': {
      'es': 'Home',
      'en': '',
    },
  },
  // TestScreen
  {
    'm2e8mxjy': {
      'es': 'PERFU',
      'en': '',
    },
    'vgjzntzi': {
      'es': 'Swipe to continue',
      'en': '',
    },
    'mtsvmor0': {
      'es': 'DRY-RUN',
      'en': '',
    },
    'nhgvtsy6': {
      'es': 'PERFUSION',
      'en': '',
    },
    'opn8wcro': {
      'es': 'PERFUSIÓN DE PRIMER PASO MIOCÁRDICO',
      'en': '',
    },
    'zlhmq3og': {
      'es': 'Usar una inyectora automática compatible con RM',
      'en': '',
    },
    'mqrnulsl': {
      'es':
          'El flujo estándar es de 3 a 7 mL/seg, según el calibre de la vía venosa:',
      'en': '',
    },
    'kyoft98o': {
      'es': 'o ',
      'en': '',
    },
    'z16vbwcl': {
      'es': '18G: hasta 5 - 7 mL/seg',
      'en': '',
    },
    'urlmkr20': {
      'es': 'o ',
      'en': '',
    },
    'a1n16hvw': {
      'es': '20G: 3 - 5 mL/seg',
      'en': '',
    },
    'y5sjgnvn': {
      'es': 'o ',
      'en': '',
    },
    'l7cdyr2x': {
      'es': '22G: hasta 3 mL/seg',
      'en': '',
    },
    'zn067yh7': {
      'es':
          'Valores orientativos, respetar el flujo máximo permitido por el acceso venoso',
      'en': '',
    },
    's5l8jcn4': {
      'es': 'Swipe to continue',
      'en': '',
    },
    'm60cbj7b': {
      'es': 'Con MOCO',
      'en': '',
    },
    'gedklq9a': {
      'es': 'Sin MOCO',
      'en': '',
    },
    'qi8ce500': {
      'es': 'RESPIRACIÓN LIBRE v/s APNEA',
      'en': '',
    },
    'ycdf5hsd': {
      'es': 'Swipe to continue',
      'en': '',
    },
    '8z0kg56w': {
      'es': 'DINÁMICA DE GADOLINIO',
      'en': '',
    },
    'w41klzis': {
      'es': 'Precontraste',
      'en': '',
    },
    'xlwgwuu3': {
      'es': 'Inyección iv de Gadolinio',
      'en': '',
    },
    'cr8levmd': {
      'es': 'Gd llega al ventrículo derecho',
      'en': '',
    },
    'uty40sez': {
      'es': 'Gd llega al ventrículo izquierdo',
      'en': '',
    },
    'tmwoiicm': {
      'es': 'PRIMER PASO',
      'en': '',
    },
    'mi7xiuxm': {
      'es': 'Gd perfunde el miocardio\n- Fase crítica para análisis clínico -',
      'en': '',
    },
    's7jowpcm': {
      'es': 'Contraste disminuye progresivamente su señal (“wash out”)',
      'en': '',
    },
    'cye60nmm': {
      'es': 'Fase de recirculación sistétmica (2do paso)',
      'en': '',
    },
    'y54dfdg1': {
      'es': 'Swipe to continue',
      'en': '',
    },
    '24irlrrn': {
      'es': 'TÉCNICAS PARA ADQUISICIÓN - AIF',
      'en': '',
    },
    '13ot0rxa': {
      'es': 'Swipe to menu',
      'en': '',
    },
    'pmi5cxov': {
      'es': 'HOME',
      'en': '',
    },
    'cwh6d0va': {
      'es': 'HOME',
      'en': '',
    },
    'qp8eguop': {
      'es': 'HOME',
      'en': '',
    },
    'y6u19omb': {
      'es': 'HOME',
      'en': '',
    },
    'p9q07r6i': {
      'es': 'HOME',
      'en': '',
    },
    'hvton5et': {
      'es': 'HOME',
      'en': '',
    },
    'q0630fsm': {
      'es': 'Home',
      'en': '',
    },
  },
  // Info
  {
    'urzlo5vk': {
      'es': 'John Doe',
      'en': '',
    },
    'yw03atrk': {
      'es': 'johndoe@gmail.com',
      'en': '',
    },
    'ni1v9xn7': {
      'es': 'Sin IA generativa',
      'en': '',
    },
    'be5ug4ti': {
      'es': 'Home',
      'en': '',
    },
  },
  // InfoAlt
  {
    'eqp6tkhv': {
      'es': 'Julián Vega Adauy / ',
      'en': '',
    },
    'p4ayyiyw': {
      'es': 'FSCMR',
      'en': '',
    },
    'f52jlq0k': {
      'es': 'CHIEF MAGNETIC OFFICER |CMO| ES',
      'en': '',
    },
    'mkaedw2v': {
      'es': 'N',
      'en': '',
    },
    't21x5pmg': {
      'es': 'TL CMR',
      'en': '',
    },
    'm6tnmlw5': {
      'es': 'Nivel 1\nBásico',
      'en': '',
    },
    'p942cp6u': {
      'es': 'Nivel 2\nSupervisado',
      'en': '',
    },
    's0w6ee8g': {
      'es': 'Nivel 3\nExperto',
      'en': '',
    },
    '8z6u2hmc': {
      'es': 'Ilustraciones con autoria médica',
      'en': '',
    },
    '83gddeq3': {
      'es': '•',
      'en': '',
    },
    '8durk58z': {
      'es': 'En ES',
      'en': '',
    },
    'v01vq3u7': {
      'es': 'N',
      'en': '',
    },
    'v8709geu': {
      'es':
          'LT CMR ocurre lo contrario: el autor realiza estudios de RMC de forma habitual y maneja directamente la consola y los parámetros técnicos de los tres principales vendors de RMC del mercado, por lo que el contenido refleja conocimiento clínico y técnico de primera línea',
      'en': '',
    },
    'g803wecn': {
      'es': ':::: TSVD ',
      'en': '',
    },
    'vx6r5pnu': {
      'es': 'RVOT',
      'en': '',
    },
    'hllhsbeu': {
      'es': ':::: TSVD RVOT',
      'en': '',
    },
    '3x9hmetr': {
      'es': '.MP4',
      'en': '',
    },
    'xkuzd3r2': {
      'es': 'VI',
      'en': '',
    },
    'lxaj0mys': {
      'es': 'AI',
      'en': '',
    },
    'cne6p2yv': {
      'es': 'TSVD',
      'en': '',
    },
    '39nl8xkd': {
      'es': '.SVG',
      'en': '',
    },
    'yje5dijf': {
      'es': 'icon',
      'en': '',
    },
    '75qe7k05': {
      'es': '.SVG',
      'en': '',
    },
    'jdlkbivo': {
      'es': 'Hello World',
      'en': '',
    },
    '776cwpbf': {
      'es': '•',
      'en': '',
    },
    '6w4hzr4w': {
      'es': 'ZERO ',
      'en': '',
    },
    'n2c8qaqw': {
      'es': 'alucinaciones generadas por IA',
      'en': '',
    },
    '2xko6ecr': {
      'es': 'IA GENERATIVA ZERO',
      'en': '',
    },
    'xhfresc8': {
      'es': 'Conocimiento médico \ncreado por humanos\npara humanos',
      'en': '',
    },
    '7t4p1c3h': {
      'es': 'Home',
      'en': '',
    },
  },
  // Locs
  {
    'tor1c5sn': {
      'es': 'Anatomia estricta Axial, Coronal, Sagital',
      'en': '',
    },
    'txi0x78u': {
      'es':
          'En cardiopatías congénitas complejas es ideal \nrealizarlas en apnea y en los tres ejes',
      'en': '',
    },
    'oew670j1': {
      'es': 'Axial',
      'en': '',
    },
    '3egdyna9': {
      'es': '2C PLT',
      'en': '',
    },
    '1wv5ll0z': {
      'es': '4C PLT',
      'en': '',
    },
    'ouw74ys3': {
      'es': 'SAX PLT',
      'en': '',
    },
    'uhhxo5m1': {
      'es': 'SAX CINE',
      'en': '',
    },
    '7qrpuwqw': {
      'es': '2C',
      'en': '',
    },
    'jczv5ezj': {
      'es': '4C',
      'en': '',
    },
    'uud14dzi': {
      'es': '3C',
      'en': '',
    },
    '5wnpcele': {
      'es': 'PILOTOS',
      'en': '',
    },
    '33o0qcss': {
      'es': '2C P ',
      'en': '',
    },
    'kw9ldjtj': {
      'es': '1 slice',
      'en': '',
    },
    '4ow5csov': {
      'es': 'Hello World',
      'en': '',
    },
    'b8zw7e1o': {
      'es': '4C P ',
      'en': '',
    },
    '39l9r9vc': {
      'es': '1 slice',
      'en': '',
    },
    'm6ol5g2l': {
      'es': 'Hello World',
      'en': '',
    },
    '7nc7r94d': {
      'es': 'EJE CORTO P ',
      'en': '',
    },
    '05sc7nzw': {
      'es': '4-6 slices',
      'en': '',
    },
    't71huouy': {
      'es': 'Hello World',
      'en': '',
    },
    'eumnsw79': {
      'es': 'Baja resolución espacial y temporal, apnea 3 segundos',
      'en': '',
    },
    'mrpu3db1': {
      'es': 'CINE 2C PILOTO',
      'en': '',
    },
    'l0d553w0': {
      'es': '1.',
      'en': '',
    },
    'up53b8e6': {
      'es':
          'Otro eje largo (distinto al que se va a adquirir) para ubicar el ápex',
      'en': '',
    },
    'rldhwii3': {
      'es': '2.',
      'en': '',
    },
    '95ovebgu': {
      'es': 'El eje corto para definir la orientación del plano',
      'en': '',
    },
    'osv2odaw': {
      'es': 'Home',
      'en': '',
    },
  },
  // VI
  {
    'jsrtsdcv': {
      'es': 'Home',
      'en': '',
    },
  },
  // CineSax
  {
    '76ogz38r': {
      'es': 'Home',
      'en': '',
    },
  },
  // Aorta
  {
    'tjt7szue': {
      'es': 'Ao ASC + DESC',
      'en': '',
    },
    '66mt2afp': {
      'es': 'Arco medio',
      'en': '',
    },
    '4jbqdix7': {
      'es': 'CINE',
      'en': '',
    },
    'hawb4k63': {
      'es': 'FLUJO',
      'en': '',
    },
    '5f7arked': {
      'es': 'COARTACION',
      'en': '',
    },
    'o0g7j1cr': {
      'es': 'ANEURISMA',
      'en': '',
    },
    '5igrwnys': {
      'es': 'Home',
      'en': '',
    },
  },
  // Esencial
  {
    'i099yp3j': {
      'es': 'MÓDULO 1',
      'en': '',
    },
    'dbyrz85m': {
      'es': 'FUNDAMENTOS DE RMC',
      'en': '',
    },
    '2e1hxnea': {
      'es': 'Física, secuencias y planos',
      'en': '',
    },
    'ze6gur2s': {
      'es': 'CAPÍTULOS DEL MÓDULO 1',
      'en': '',
    },
    'x9eoe9c6': {
      'es': 'MÓDULO 1',
      'en': '',
    },
    'twa00f6l': {
      'es': 'FUNDAMENTOS DE RMC',
      'en': '',
    },
    '4x4uohl6': {
      'es': 'Planos y anatomia cardíaca',
      'en': '',
    },
    'j9vmaych': {
      'es': 'CAPÍTULOS DEL MÓDULO 1',
      'en': '',
    },
    '9ngvu9vg': {
      'es': 'Home',
      'en': '',
    },
  },
  // Topografia
  {
    'ewct65nz': {
      'es': 'Home',
      'en': '',
    },
  },
  // Navbar
  {
    '7wghkh1y': {
      'es': 'HOME',
      'en': '',
    },
    'fq1x1rth': {
      'es': 'PLAN',
      'en': '',
    },
    'tbz39mfg': {
      'es': 'ESNTL',
      'en': '',
    },
    'fhoqhofp': {
      'es': 'GO!',
      'en': '',
    },
    'sln7x7nw': {
      'es': 'ASK',
      'en': '',
    },
    'l6axoph8': {
      'es': 'CALC',
      'en': '',
    },
  },
  // Planner_Column
  {
    '8gvof9j6': {
      'es': 'PROTOCOL',
      'en': '',
    },
    'fx6srldf': {
      'es': 'LOCS',
      'en': '',
    },
    'miltuur0': {
      'es': 'PILOT',
      'en': '',
    },
    'isqb3id1': {
      'es': 'VIEWS',
      'en': '',
    },
    '8ce8zojx': {
      'es': 'LAX IZQ',
      'en': '',
    },
    'v0qhnv0g': {
      'es': 'LAX DER',
      'en': '',
    },
    'b4asvvcy': {
      'es': 'SAX',
      'en': '',
    },
    '7qui192r': {
      'es': 'MAPS',
      'en': '',
    },
    'b9mx39x9': {
      'es': 'PERFU',
      'en': '',
    },
    'lzty3laf': {
      'es': 'PERFU QTY',
      'en': '',
    },
    '827wrary': {
      'es': 'EGE',
      'en': '',
    },
    'ggl2eplo': {
      'es': 'TI SCOUT',
      'en': '',
    },
    '7jqy8e9s': {
      'es': 'LGE',
      'en': '',
    },
    'edyomlqy': {
      'es': 'CINE FB',
      'en': '',
    },
    'o3z32azk': {
      'es': 'CINE AXIAL',
      'en': '',
    },
    'akxv2iqs': {
      'es': 'STIR',
      'en': '',
    },
    '40aq7bg3': {
      'es': 'VAL+FLOW',
      'en': '',
    },
    '6x2u1wga': {
      'es': '4D FLOW',
      'en': '',
    },
    '47aw39cq': {
      'es': 'ANGIO',
      'en': '',
    },
    'pcoc8fg1': {
      'es': 'T1 POST',
      'en': '',
    },
  },
  // Essential_Column
  {
    'ogh8zpcj': {
      'es': 'CONCEPTOS ESENCIALES DE RM CARDÍACA',
      'en': '',
    },
  },
  // CMR_PULSE_CARD
  {
    'kd2kd0mx': {
      'es': 'CMR PULSE',
      'en': '',
    },
    'dclg7quc': {
      'es': ' | WEEK 08-26',
      'en': '',
    },
    '1m58ql61': {
      'es': 'Curated weekly highlights',
      'en': '',
    },
    'dd45ppgt': {
      'es': 'Chronic ischemic remodeling',
      'en': '',
    },
  },
  // CMR_FAVORITE_CARD
  {
    'pugkvxxb': {
      'es': 'FAV ',
      'en': '',
    },
    'ln0gjkj9': {
      'es': '| SCREENS',
      'en': '',
    },
  },
  // GO_CMR_Column
  {
    'v1qtynaf': {
      'es': '¿CÓMO QUIERES COMENZAR?',
      'en': '',
    },
    'ft4o7fwn': {
      'es': 'POR HALLAZGO',
      'en': '',
    },
    'jvldd5cg': {
      'es': 'POR DIAGNÓSTICO',
      'en': '',
    },
    'u3zhxy0z': {
      'es': '¿QUÉ NECESITAS EVALUAR HOY?',
      'en': '',
    },
    'h9dqkhik': {
      'es': 'VI DILATADO',
      'en': '',
    },
    'cy8lipdf': {
      'es': 'VD DILATADO',
      'en': '',
    },
    '5xfxkqeo': {
      'es': 'VI ENGROSADO',
      'en': '',
    },
    'pwikiv2n': {
      'es': 'VD ENGROSADO',
      'en': '',
    },
    'nyuklupt': {
      'es': 'MASAS',
      'en': '',
    },
    '8pte7e3j': {
      'es': 'DISPOSITIVOS',
      'en': '',
    },
    'jf81u6mr': {
      'es': '¿QUÉ DIAGNÓSTICO BUSCAS?',
      'en': '',
    },
    'atdy3ddx': {
      'es': 'Buscar patología, hallazgo o protocolo...',
      'en': '',
    },
    'w8wjpyqx': {
      'es': 'RECIENTES',
      'en': '',
    },
    'rpdal8nz': {
      'es': 'FRECUENTES',
      'en': '',
    },
    'aatzf11f': {
      'es': 'VER ÍNDICE COMPLETO A–Z',
      'en': '',
    },
    's9c6skc8': {
      'es':
          'Selecciona una opción para ver el enfoque y protocolo CMR recomendado.',
      'en': '',
    },
  },
  // Ask_ESNTL_Column
  {
    'jx7a6sw4': {
      'es': 'ASK ESNTL | Asistente de RMC con IA',
      'en': '',
    },
    '520zh3u4': {
      'es': 'Hola, soy ',
      'en': '',
    },
    '0vhwzhmn': {
      'es': 'ASK ES',
      'en': '',
    },
    'stysmvxv': {
      'es': 'N',
      'en': '',
    },
    'a0omb1yt': {
      'es': 'TL',
      'en': '',
    },
    'm0vexb7r': {
      'es':
          'Respondo sobre RMC basado exclusivamente en fuentes oficiales y confiables: protocolos, secuencias, planificación y más, pruébame!',
      'en': '',
    },
    '78v0raax': {
      'es': 'Escribe tu pregunta...',
      'en': '',
    },
    'kh06d9bh': {
      'es': 'PREGUNTAS SUGERIDAS',
      'en': '',
    },
    'uaflz537': {
      'es': '¿Cómo planificar un eje corto en RMC?',
      'en': '',
    },
    'rz5s9ky4': {
      'es': 'Diferencias entre T1 mapping MOLLI y ShMOLLI',
      'en': '',
    },
    '34jxbkqk': {
      'es': 'Protocolo de realce tardío: parámetros recomendados',
      'en': '',
    },
  },
  // Favorite_Dialog
  {
    'hy5zcp1g': {
      'es': 'PANTALLAS FAVORITAS',
      'en': '',
    },
  },
  // Sentence
  {
    'jrabcj9v': {
      'es': '•',
      'en': '',
    },
  },
  // Sub_Sentence
  {
    'az6sozsh': {
      'es': '•',
      'en': '',
    },
  },
  // Column_1_Protocol
  {
    'ztmx0nsk': {
      'es': 'BÁSICAS',
      'en': '',
    },
    'lat8344v': {
      'es': 'OPCIONALES',
      'en': '',
    },
    'bapewtu9': {
      'es': 'LOCS',
      'en': '',
    },
    'dnea6u3a': {
      'es': 'PILOT',
      'en': '',
    },
    'hbrnhjil': {
      'es': 'LAX IZQ',
      'en': '',
    },
    'iy9bi43p': {
      'es': 'SAX',
      'en': '',
    },
    '1q6d9dr3': {
      'es': 'MAPS',
      'en': '',
    },
    'yf72ya0y': {
      'es': 'LGE',
      'en': '',
    },
    'i89ou09r': {
      'es': 'PERFU',
      'en': '',
    },
    'woxlvtjm': {
      'es': 'LAX DER',
      'en': '',
    },
    'izxomuln': {
      'es': 'CINE FB',
      'en': '',
    },
    '2t7tz79c': {
      'es': 'ANGIO',
      'en': '',
    },
    'sbahsb6k': {
      'es': 'VAL+FLOW',
      'en': '',
    },
    'q8ya7905': {
      'es': 'STIR',
      'en': '',
    },
    '4h96v27l': {
      'es':
          'Mapas paramétricos: T1 básico, T2 y T2* opcionales\nRT: Real time, FB: Free Breathing',
      'en': '',
    },
  },
  // Column_2_Protocol
  {
    'x5ykamzh': {
      'es': 'LOCS',
      'en': '',
    },
    '605q7hqh': {
      'es': 'LAX IZQ',
      'en': '',
    },
    '1a691eh5': {
      'es': 'SAX',
      'en': '',
    },
    'f36ek1eu': {
      'es': 'LAX DER',
      'en': '',
    },
    'bzezpyq8': {
      'es': 'MAP SAX',
      'en': '',
    },
    '9i7c3bt1': {
      'es': 'PILOT',
      'en': '',
    },
    'd73vxdvb': {
      'es': 'MAP SAX',
      'en': '',
    },
    'x8c2ee07': {
      'es': 'PERFU',
      'en': '',
    },
    '46ewg5i0': {
      'es': 'TI SCOUT',
      'en': '',
    },
    '13jgwo2j': {
      'es': 'GADO',
      'en': '',
    },
    'tzr8hjxh': {
      'es': 'VALVE',
      'en': '',
    },
    '7mr1llbl': {
      'es': '+',
      'en': '',
    },
    'wh7bc2v1': {
      'es': 'FLOW',
      'en': '',
    },
    'kdz1kgyy': {
      'es': 'LAX IZQ',
      'en': '',
    },
    'zehlaizi': {
      'es': 'SAX',
      'en': '',
    },
    '3e27e1cw': {
      'es': 'MAPA',
      'en': '',
    },
    '6bpcc83l': {
      'es': 'PERFU',
      'en': '',
    },
    '6nw5fb72': {
      'es': 'GADO',
      'en': '',
    },
  },
  // Column_3_Protocol
  {
    'sy85n2oq': {
      'es': 'BASIC',
      'en': '',
    },
    '2cngc9fd': {
      'es': 'OPTIONAL',
      'en': '',
    },
    'kt5ul88w': {
      'es': '° FREE BREATH',
      'en': '',
    },
    'xrm0em5e': {
      'es': '• ',
      'en': '',
    },
    '5bme3pug': {
      'es': 'LOCs, White Blood,',
      'en': '',
    },
    '3jxx2z3m': {
      'es': ' Black blood ',
      'en': '',
    },
    '06d8w9v4': {
      'es': '°',
      'en': '',
    },
    'lo0056u4': {
      'es': '• ',
      'en': '',
    },
    'dgawzyeg': {
      'es': 'CINES Left LAX, ',
      'en': '',
    },
    'vohvme0f': {
      'es': 'Right LAX',
      'en': '',
    },
    'rxtzsksp': {
      'es': '• ',
      'en': '',
    },
    '10g8v9fe': {
      'es': 'Maps T1',
      'en': '',
    },
    'vzi2orcv': {
      'es': '°',
      'en': '',
    },
    '6emyij89': {
      'es': ',',
      'en': '',
    },
    'uz9vk03z': {
      'es': ' Black blood ',
      'en': '',
    },
    'm5tczc27': {
      'es': '• ',
      'en': '',
    },
    'j1td7m6s': {
      'es': 'First pass perfusion ',
      'en': '',
    },
    'jur2b83t': {
      'es': '°',
      'en': '',
    },
    '9j75laic': {
      'es': '• ',
      'en': '',
    },
    'uby76ols': {
      'es': 'CINE SAX',
      'en': '',
    },
    '93ud49n8': {
      'es': '• ',
      'en': '',
    },
    '8ylgcwjm': {
      'es': 'EGE',
      'en': '',
    },
    't1kedr1e': {
      'es': ', LGE SAX ',
      'en': '',
    },
    'k3eooi3j': {
      'es': '°',
      'en': '',
    },
    '00eb47zs': {
      'es': ', LGE LAX',
      'en': '',
    },
    'ptlpavpl': {
      'es': '• ',
      'en': '',
    },
    '5bw9qhib': {
      'es': 'Aortic PC Flow ',
      'en': '',
    },
    '15tl28ce': {
      'es': '°',
      'en': '',
    },
  },
  // ScrollViewWithScrollToBottom
  {
    'nzufa2vs': {
      'es': 'DESLIZA HACIA ARRIBA',
      'en': '',
    },
  },
  // Swipe_Continue
  {
    'kkqhjc4i': {
      'es': 'Swipe to continue',
      'en': '',
    },
  },
  // Favorite_Alt_Dialog
  {
    '6nio2gqc': {
      'es': 'Mover Arriba',
      'en': '',
    },
    'gmtacbwm': {
      'es': 'Eliminar Favorito',
      'en': '',
    },
    'icuhhm2g': {
      'es': 'Cancelar',
      'en': '',
    },
  },
  // Column_1_VI
  {
    'jhxm0jyu': {
      'es': '2C Piloto',
      'en': '',
    },
    'npoqwodc': {
      'es': 'ó',
      'en': '',
    },
    '4vsaaqen': {
      'es': '4C Piloto',
      'en': '',
    },
    'xbrjhnzd': {
      'es': '+',
      'en': '',
    },
    'zc5bjdxd': {
      'es': 'SAX Piloto',
      'en': '',
    },
    'jwkola7u': {
      'es': '=',
      'en': '',
    },
    'su75cbtf': {
      'es': '3C CINE',
      'en': '',
    },
    'slosxj41': {
      'es': '4C PILOTO',
      'en': '',
    },
    'r3rsg1y0': {
      'es': 'EC PILOTO',
      'en': '',
    },
    '0ezka4yx': {
      'es': '3C VI FINAL',
      'en': '',
    },
  },
  // Column_2_VI
  {
    '43comfx5': {
      'es': '3C CINE',
      'en': '',
    },
    '3fdkk45r': {
      'es': '+',
      'en': '',
    },
    'weusowfo': {
      'es': 'SAX Piloto',
      'en': '',
    },
    '4pkx1fuo': {
      'es': '=',
      'en': '',
    },
    'gx713pxi': {
      'es': '4C CINE',
      'en': '',
    },
    '056embn7': {
      'es': '3C VI FINAL',
      'en': '',
    },
    'dxsw8nuw': {
      'es': 'EC PILOTO',
      'en': '',
    },
    'gfcf4pvk': {
      'es': '4C VI FINAL',
      'en': '',
    },
  },
  // Column_3_VI
  {
    'gygu49p8': {
      'es': '3C CINE',
      'en': '',
    },
    'zdoe9s9q': {
      'es': '+',
      'en': '',
    },
    'u13rpv0f': {
      'es': 'SAX Piloto',
      'en': '',
    },
    'l6jsxxan': {
      'es': '=',
      'en': '',
    },
    'exlo15yl': {
      'es': '2C CINE',
      'en': '',
    },
    'xt3g7t1r': {
      'es': 'Evitar el ventrículo derecho \n(flechas amarillas)',
      'en': '',
    },
    'rhwpnygz': {
      'es': '3C VI FINAL',
      'en': '',
    },
    'ac2b657y': {
      'es': 'EC PILOTO',
      'en': '',
    },
    '9zm2c9i2': {
      'es': '2C VI FINAL',
      'en': '',
    },
    'l9veilps': {
      'es':
          'Todos los CINES de eje largo del corazón izquierdo se deben realizar con el mismo seteo, deben ser comparables',
      'en': '',
    },
  },
  // Column_4_VI
  {
    'gyz58h7e': {
      'es': '3C CINE',
      'en': '',
    },
    'mc1uc003': {
      'es': '=',
      'en': '',
    },
    'wp2e9tc9': {
      'es': 'TSVI',
      'en': '',
    },
    'lsa0ugtn': {
      'es': '3C VI',
      'en': '',
    },
    'ric2i47c': {
      'es': 'TSVI',
      'en': '',
    },
  },
  // Column_5_VI
  {
    'yi412qc4': {
      'es': '4CP + EC P',
      'en': '',
    },
    'icry3867': {
      'es': ' = ',
      'en': '',
    },
    'ocjlgkie': {
      'es': '3C FINAL',
      'en': '',
    },
    'm04pwxg3': {
      'es': 'Hello World',
      'en': '',
    },
    '1tjksn77': {
      'es': '4C FINAL + EC P',
      'en': '',
    },
    'vpr2bc4i': {
      'es': ' = ',
      'en': '',
    },
    'muoo17xu': {
      'es': '2C FINAL',
      'en': '',
    },
    '8m66zz2h': {
      'es': 'Hello World',
      'en': '',
    },
    'rolfvwka': {
      'es': '3C FINAL + EC P',
      'en': '',
    },
    'g4xhpgth': {
      'es': ' = ',
      'en': '',
    },
    'uadsq6eu': {
      'es': '4C FINAL',
      'en': '',
    },
    'jgzxbbjc': {
      'es': 'Hello World',
      'en': '',
    },
  },
  // Column_1_CINESAX
  {
    'crrlaj45': {
      'es': '3C CINE',
      'en': '',
    },
    'ja9m45vi': {
      'es': '+',
      'en': '',
    },
    'mejkuorm': {
      'es': '2C CINE',
      'en': '',
    },
    'gecul9qo': {
      'es': '+',
      'en': '',
    },
    '1luqdtm0': {
      'es': '4C CINE',
      'en': '',
    },
    'y54f2prc': {
      'es': '=',
      'en': '',
    },
    'r37i6yvr': {
      'es': 'SAX CINE FULL',
      'en': '',
    },
    '3juw0ab2': {
      'es': 'GROSOR + GAP\n6 + 4 = 10 mm\n7 + 3 = 10 mm\n8 + 2 = 10 mm',
      'en': '',
    },
    '2l9r5tjl': {
      'es': 'PRO TIP',
      'en': '',
    },
  },
  // Column_2_CINESAX
  {
    'kzzdmmds': {
      'es': '•',
      'en': '',
    },
    '0597dea6': {
      'es':
          'El septum interauricular puede evaluarse en esta pila; sin embargo, una CIA se caracteriza mejor mediante un cine dedicado “en face” del septum ',
      'en': '',
    },
    'h6smtlbu': {
      'es': '🔗',
      'en': '',
    },
    'b3w23vrl': {
      'es':
          'El septum interauricular puede evaluarse en esta pila; sin embargo, una CIA se caracteriza mejor mediante un cine dedicado “en face” del septum',
      'en': '',
    },
    'nx83m1sv': {
      'es': 'Cobertura completa de eje corto',
      'en': '',
    },
  },
  // NavbarWhite
  {
    '8ubg2zun': {
      'es': 'HOME',
      'en': '',
    },
    'ajh3qoa9': {
      'es': 'PLAN',
      'en': '',
    },
    '1v1wfjlg': {
      'es': 'ESNTL',
      'en': '',
    },
    'qe7617bd': {
      'es': 'GO!',
      'en': '',
    },
    '517m0b1h': {
      'es': 'ASK',
      'en': '',
    },
    'y8lnxrq5': {
      'es': 'CALC',
      'en': '',
    },
  },
  // SentenceWhite
  {
    '9zlj7pbj': {
      'es': '•',
      'en': '',
    },
  },
  // progress_Module
  {
    '059pxz19': {
      'es': 'Progreso del módulo',
      'en': '',
    },
    'p9gwsw4h': {
      'es': '%',
      'en': '',
    },
  },
  // SubSentenceWhite
  {
    'edivv8eo': {
      'es': '•',
      'en': '',
    },
  },
  // Column_1_Topog
  {
    'wigc8345': {
      'es': 'POSTERIOR',
      'en': '',
    },
    'gl3584uz': {
      'es': 'INFERIOR',
      'en': '',
    },
    'q29322b6': {
      'es': 'ANTERIOR',
      'en': '',
    },
    '7flpkifq': {
      'es': 'LATERALES \nIZQ-DER',
      'en': '',
    },
  },
  // Column_2_Topog
  {
    'bhvc8lh6': {
      'es': 'BASE\nA nivel valvular',
      'en': '',
    },
    'ubgo3e9u': {
      'es': 'PULMONAR',
      'en': '',
    },
    'u2rz6fpv': {
      'es': 'AÓRTICA',
      'en': '',
    },
    'c0dxjgxt': {
      'es': 'TRICÚSPIDE',
      'en': '',
    },
    'qrvj6qb5': {
      'es': 'MITRAL',
      'en': '',
    },
    '4o9n15x9': {
      'es': 'BASE',
      'en': '',
    },
    '03m485jx': {
      'es': 'MEDIO',
      'en': '',
    },
    '7hn8t99k': {
      'es': 'MEDIO',
      'en': '',
    },
  },
  // Column_3_Topog
  {
    'da92h8dh': {
      'es': '4C',
      'en': '',
    },
    'vccps7yg': {
      'es': 'EC',
      'en': '',
    },
    'ulnvcioz': {
      'es': '2C',
      'en': '',
    },
    'n718ad9o': {
      'es': '3C',
      'en': '',
    },
  },
  // Column_4_Topog
  {
    'puxmblie': {
      'es': '4C',
      'en': '',
    },
    'bofdsr5q': {
      'es': 'DERECHA',
      'en': '',
    },
    '2b6ifzbr': {
      'es': 'IZQUIERDA',
      'en': '',
    },
    '3lwb5rhr': {
      'es': '3C',
      'en': '',
    },
    'w2dx5v9c': {
      'es': '2C',
      'en': '',
    },
    '4byarixj': {
      'es': 'TSV',
      'en': '',
    },
    '6a9jw3p1': {
      'es': 'TSV: tracto de salida ventricular',
      'en': '',
    },
  },
  // Column_5_Topog
  {
    '0zfa6c7g': {
      'es': 'ENDOCARDIO',
      'en': '',
    },
    's05irrbg': {
      'es': 'MESOCARDIO',
      'en': '',
    },
    'iowjmpdy': {
      'es': 'SUBEPICARDIO',
      'en': '',
    },
    'jx6zxcv2': {
      'es': 'Tipos de realce tardio según patrón de afectación',
      'en': '',
    },
    'pudhvgxb': {
      'es':
          'CARDIOPATIA\nISQUÉMICA\nIAM subendocárdico\nen territorio de DA y \ntransmural en \nterritorio de Cx',
      'en': '',
    },
    'd6tblab4': {
      'es':
          'MIOCARDIOPATIA ARRITMOGÉNICA IZQUIERDA asociado a variante patogénica en Lamina A/C',
      'en': '',
    },
    'xovypu30': {
      'es': 'MIOCARDITIS AGUDA\nFibrosis \nsubepicárdica \ninferolateral',
      'en': '',
    },
  },
  // Column_6_Topog
  {
    'tcd1oj7x': {
      'es': '•',
      'en': '',
    },
    'b9ps5thi': {
      'es': 'El ',
      'en': '',
    },
    'ppfjs9rb': {
      'es': 'ventrículo derecho',
      'en': '',
    },
    'a97rttvo': {
      'es': ' (VD) se inserta (“sujeta”) al',
      'en': '',
    },
    'sge0y6io': {
      'es': ' ventrículo izquierdo ',
      'en': '',
    },
    'ki02iu4c': {
      'es': '(VI) en los',
      'en': '',
    },
    'ki9fa1uc': {
      'es': ' puntos de inserción interventricular ',
      'en': '',
    },
    '6lel4pri': {
      'es': 'superior e inferior (círculos rojos)',
      'en': '',
    },
    'aytqopko': {
      'es': 'Hello World',
      'en': '',
    },
    'gdxajmtr': {
      'es': '•',
      'en': '',
    },
    '0msup2rn': {
      'es': 'Si trazamos ',
      'en': '',
    },
    'yqjjegjw': {
      'es': 'líneas',
      'en': '',
    },
    '8nfzs1ls': {
      'es':
          ' desde cada punto de inserción que pase por la mitad de la cavidad del VI (en diástole),',
      'en': '',
    },
    '50yre432': {
      'es':
          ' las proyecciones de estas líneas dividen al VI en 4 segmentos principales',
      'en': '',
    },
    'byj9lqe3': {
      'es': 'Hello World',
      'en': '',
    },
    '50hcgkj8': {
      'es': 'A: ',
      'en': '',
    },
    'rdxglmvj': {
      'es': 'Anterior, ',
      'en': '',
    },
    'grjvkw35': {
      'es': 'I: ',
      'en': '',
    },
    'k08w3c2x': {
      'es': 'Inferior, \n',
      'en': '',
    },
    'p4l0821x': {
      'es': 'L: ',
      'en': '',
    },
    'eg5scz9w': {
      'es': 'Lateral,',
      'en': '',
    },
    'l929a9rc': {
      'es': ' S: ',
      'en': '',
    },
    'mq04py9l': {
      'es': 'Septal',
      'en': '',
    },
    'abo2q0d4': {
      'es': 'Hello World',
      'en': '',
    },
    '155yaztx': {
      'es': '•',
      'en': '',
    },
    'm4fmwwhk': {
      'es': 'Por su parte ',
      'en': '',
    },
    '1dp11ta7': {
      'es': 'solamente los segmentos SEPTAL y LATERAL',
      'en': '',
    },
    'scqg0peu': {
      'es':
          ' debido a su mayor tamaño, se dividen nuevamente en dos sub-segmentos',
      'en': '',
    },
    'j725m49c': {
      'es': 'Hello World',
      'en': '',
    },
    'ngy70aw5': {
      'es': '•',
      'en': '',
    },
    'fid7x62b': {
      'es': 'Y ',
      'en': '',
    },
    '69ptj1d6': {
      'es': 'reciben su nombre según el segmento que tengan más próximo',
      'en': '',
    },
    'jucgp910': {
      'es': 'Hello World',
      'en': '',
    },
  },
  // Column_7_Topog
  {
    'lfz6851k': {
      'es': 'BASE',
      'en': '',
    },
    '4h97knqx': {
      'es': 'MEDIO',
      'en': '',
    },
    'daawqz6q': {
      'es': 'ÁPEX',
      'en': '',
    },
    'awompkip': {
      'es': 'Ap CAP',
      'en': '',
    },
  },
  // Column_8_Topog
  {
    'phkege0m': {
      'es': 'Visualización de los segmentos desde distintas vistas',
      'en': '',
    },
  },
  // Column_9_Topog
  {
    'g44f9xah': {
      'es': 'MODELO AHA 17 SEGMENTOS',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '4rg8c4vy': {
      'es': '',
      'en': '',
    },
    'jxmzu76u': {
      'es': '',
      'en': '',
    },
    'mhl2c26i': {
      'es': '',
      'en': '',
    },
    'pu8iifxd': {
      'es': '',
      'en': '',
    },
    '784t9tha': {
      'es': '',
      'en': '',
    },
    'hx8uxjud': {
      'es': '',
      'en': '',
    },
    'hq5ud7em': {
      'es': '',
      'en': '',
    },
    'xkcutxa1': {
      'es': '',
      'en': '',
    },
    '6rvk6tf5': {
      'es': '',
      'en': '',
    },
    'xek25qw0': {
      'es': '',
      'en': '',
    },
    'w4fw4p18': {
      'es': '',
      'en': '',
    },
    '215p0shj': {
      'es': '',
      'en': '',
    },
    'sxn6ow3e': {
      'es': '',
      'en': '',
    },
    'askkcvg6': {
      'es': '',
      'en': '',
    },
    '2718s09i': {
      'es': '',
      'en': '',
    },
    'mqemlqkb': {
      'es': '',
      'en': '',
    },
    'dusouvas': {
      'es': '',
      'en': '',
    },
    'dd4n1asu': {
      'es': '',
      'en': '',
    },
    'ev7y4rus': {
      'es': '',
      'en': '',
    },
    'my8rjr2s': {
      'es': '',
      'en': '',
    },
    'bu1ld1wn': {
      'es': '',
      'en': '',
    },
    'd6w3gw4z': {
      'es': '',
      'en': '',
    },
    '9t3r9e81': {
      'es': '',
      'en': '',
    },
    '3w8hgri5': {
      'es': '',
      'en': '',
    },
    'b05jcyfl': {
      'es': '',
      'en': '',
    },
    '3tuzdcqs': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
