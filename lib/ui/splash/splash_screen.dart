import 'package:flutter/material.dart';
import 'package:flutter_provider_clean_code/ui/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creamos un funcion asincronal con una duracion determinada
  Future<void> _waitAndPush() async {
    await Future.delayed(const Duration(seconds: 2));
    //tenemos que validar que el este MONTADO cuando estamos usando el context
    if (mounted) {
      await Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    }
  }

  @override
  void initState() {
    _waitAndPush();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: MediaQuery.of(context).size.width / 1.5,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
