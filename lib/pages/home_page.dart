import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_title.dart';
import 'package:flutter_application_1/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => const Scaffold(
        body: Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
