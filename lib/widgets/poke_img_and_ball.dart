import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/pokemodel.dart';

class PokeImgAndBall extends StatelessWidget {
  final PokeModel pokemon;
  const PokeImgAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: 85,
            height: 85,
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              errorWidget: (context, url, error) => const Icon(Icons.ac_unit),
              width: 85,
              height: 85,
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
