// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_provider_clean_code/domain/model/pokemon.dart';
import 'package:flutter_provider_clean_code/domain/repository/pokemon_api.dart';

class HomeProvider extends ChangeNotifier {
  //desde nuestra interfas y generamos su consructor
  HomeProvider({
    required this.pokemonApi,
  });

  //creamos nuestro listado de pokemon inizilizamo en nulo
  List<Pokemon>? pokemonList;

  //instanciamos nuestro servicio
  PokemonApi pokemonApi;

  Future<void> loadPokemons() async {
    pokemonList = await pokemonApi.getPokemons();
    notifyListeners();
  }
}
