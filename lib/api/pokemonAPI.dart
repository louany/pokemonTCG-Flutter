import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tp_pokemontcg/model/pokemon.dart';

class PokemonAPI {
  final _baseUrl = "https://api.pokemontcg.io/v1/cards";

  Future<List<Pokemon>> getAllPokemon() async {
    final response = await http.get("https://api.pokemontcg.io/v1/cards/");

    if (response.statusCode == 200) {
      List<Pokemon> pokemons = [];
      Map<String, dynamic> responseJSON = json.decode(response.body);

      List responseList = responseJSON['cards'];
      for (var data in responseList) {
        pokemons.add(Pokemon.fromJSON(data));
      }
      return pokemons;
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
