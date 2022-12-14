import 'package:flutter/material.dart';
import 'package:flutter_provider_clean_code/domain/repository/pokemon_api.dart';
import 'package:flutter_provider_clean_code/ui/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  //vamos hacer el constructor privado
  const HomeScreen._({super.key});

  static Widget create({Key? key}) => ChangeNotifierProvider(
        lazy: false,
        create: (context) => HomeProvider(
          pokemonApi: context.read<PokemonApi>(),
        )..loadPokemons(),
        child: HomeScreen._(key: key),
      );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
