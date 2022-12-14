//aqui definimos que metods vamos implementar

import 'package:flutter_provider_clean_code/domain/model/pokemon.dart';

//aqui definimos los metodos que vamos implementar mas no como lo vamos a implementar
abstract class PokemonApi {
  Future<List<Pokemon>> getPokemons();
}
