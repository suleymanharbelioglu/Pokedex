import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/pokemodel.dart';

class PokeApi {
  static const _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokeModel>> getPokemonData() async {
    List<PokeModel> list = [];
    var response = await Dio().get(_url);
    List pokeJsonList = jsonDecode(response.data)["pokemon"] as List;
    list = pokeJsonList
        .map(
          (e) => PokeModel.fromJson(e),
        )
        .toList();
    return list;
  }
}
