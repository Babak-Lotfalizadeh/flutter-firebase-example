import 'package:flutter_firebase_example/provider/theme_provider.dart';
import 'package:flutter_firebase_example/util/include.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)?.appName ?? "Firebase",
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      scaffoldMessengerKey: Secure.snackBarKey,
      navigatorKey: Secure.systemNavigatorKey,
      theme: context.watch<ThemeProvider>().themeData,
      routes: NavigationService.routes,
      initialRoute: NavigationService.initialRoute,
    );
  }
}
