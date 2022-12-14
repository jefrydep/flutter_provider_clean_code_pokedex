import 'package:flutter_provider_clean_code/domain/model/pokemon.dart';
import 'package:flutter_provider_clean_code/domain/repository/pokemon_api.dart';
import 'package:http/http.dart' as http;

const pokemonApi =
    'https://gist.githubusercontent.com/hungps/0bfdd96d3ab9ee20c2e572e47c6834c7/raw/pokemons.json';

class PokemonRestService implements PokemonApi {
  @override
  Future<List<Pokemon>> getPokemons() async {
    var url = Uri.parse(pokemonApi);
    var response = await http.get(url);
    print('response status ${response.statusCode}');
    print('response body ${response.body}');
    return pokemonFromJson(response.body);
  }
}
