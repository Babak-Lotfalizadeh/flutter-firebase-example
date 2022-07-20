import 'package:flutter_firebase_example/util/include.dart';

class MainPage extends StatelessWidget {
  static const String id = "MainPage";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: KeysEnum.splashPage.key,
    );
  }
}
