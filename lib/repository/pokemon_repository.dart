import 'package:tp_pokemontcg/api/pokemonAPI.dart';
import 'package:tp_pokemontcg/model/pokemon.dart';

class PokemonRepository {
  PokemonAPI api = PokemonAPI();

  Future<List<Pokemon>> getAllPokemon() => api.getAllPokemon();
}
