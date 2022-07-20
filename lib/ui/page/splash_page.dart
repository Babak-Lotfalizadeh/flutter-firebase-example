import 'package:flutter_firebase_example/resources/screen_values.dart';
import 'package:flutter_firebase_example/ui/page/main_page.dart';
import 'package:flutter_firebase_example/util/include.dart';

class SplashPage extends StatefulWidget {
  static const String id = "SplashPage";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      NavigationService.pushReplacement(const MainPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: KeysEnum.homePage.key,
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          AppLocalizations.of(context)?.appName ?? "",
          style: GoogleFonts.lobster(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: ScreenValues.fontExtraLargeSize,
          ),
        ),
      ),
    );
  }
}
