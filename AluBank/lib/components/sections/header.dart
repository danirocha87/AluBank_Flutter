import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //aqui uso para fazer o gradiente, informo onde começo e onde termina e as cores que quero
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // aqui uso uma lista de cores para fazer o gradiente na tela
            colors: ThemeColors.headerGradient),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          16.0,
          80.0,
          16.0,
          16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Text(
                // "\$1000.00",
                // style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                //),
                //uso o tedxtrich quando quero estilizar apenas uma parte do texto.
                Text.rich(
                  TextSpan(
                    text: "\$",
                   //aqui preciso retirar depois que o bodyMedium: estiver funcionando
                    style: TextStyle(fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: "1000.00",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Balanço disponível",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
