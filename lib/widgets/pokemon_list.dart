import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/pokemodel.dart';
import 'package:flutter_application_1/services/poke_api.dart';
import 'package:flutter_application_1/widgets/poklist_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokeModel>> _pokeList;
  @override
  void initState() {
    _pokeList = PokeApi.getPokemonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokeModel>>(
      future: _pokeList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokeModel> listem = snapshot.data!;

          return GridView.builder(
              itemCount: listem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) {
                debugPrint('item builder çalıştı');
                return PoklistItem(
                  pokemon: listem[index],
                );
              });
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Hata çıktı'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
