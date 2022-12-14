//aqui definimos que metods vamos implementar

import 'package:flutter_provider_clean_code/domain/model/pokemon.dart';

abstract class PokemonApi {
  Future<List<PokemonResponse>> getPokemons();
}
