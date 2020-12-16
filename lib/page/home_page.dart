import 'package:flutter/material.dart';
import 'package:tp_pokemontcg/repository/pokemon_repository.dart';

class HomePage extends StatelessWidget {
  PokemonRepository pok = PokemonRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PokemonTCG'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => pok.getAllPokemon(),
              color: Colors.blue,
              child: Text('APPLY', style: TextStyle(color: Colors.white)),
            ),
          ],
        ));
  }
}
