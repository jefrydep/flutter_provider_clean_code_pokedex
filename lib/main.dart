import 'package:flutter/material.dart';
import 'package:flutter_provider_clean_code/data/rest/pokemon_rest_service.dart';
import 'package:flutter_provider_clean_code/domain/repository/pokemon_api.dart';
import 'package:flutter_provider_clean_code/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PokemonApi>(
          create: (context) => PokemonRestService(),
        )
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: SplashScreen()),
    );
  }
}
