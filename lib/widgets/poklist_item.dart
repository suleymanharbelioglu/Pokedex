import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/constants/ui_helper.dart';
import 'package:flutter_application_1/models/pokemodel.dart';
import 'package:flutter_application_1/pages/detail_page.dart';
import 'package:flutter_application_1/widgets/poke_img_and_ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PoklistItem extends StatelessWidget {
  final PokeModel pokemon;
  const PoklistItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? 'N/A',
                  style: Constants.getPokemonNameTextStyle()),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: Constants.getTypeChipTextStyle(),
                ),
              ),
              Expanded(child: PokeImgAndBall(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
