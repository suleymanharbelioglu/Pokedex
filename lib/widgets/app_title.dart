import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String _pokeIconImageAdress = "images/pokeball.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      height: 120,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                Constants.appTitle,
                style: Constants.appTitleTextStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              _pokeIconImageAdress,
              width: 150,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
