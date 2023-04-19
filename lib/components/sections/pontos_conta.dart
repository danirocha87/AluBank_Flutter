import 'package:appLayouts/components/box_card.dart';
import 'package:appLayouts/components/color_dot.dart';
import 'package:appLayouts/components/content_division.dart';
import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PontosConta extends StatelessWidget {
  const PontosConta({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.normal),
            ),
          ),
          const BoxCard(
            boxContent: _PontosContaContent(),
          )
        ],
      ),
    );
  }
}

class _PontosContaContent extends StatelessWidget {
  const _PontosContaContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pontosConta;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pontos totais:'),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 16.0),
              child: Text(
                '3000',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: ContentDivision(
                width: 320,
              ),
            ),
            Text(
              'Objetivos:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 4.0),
                    child: ColorDot(
                        color: ThemeColors.recentActivity['free_delivery'])),
                Text('Entrega grátis: 150000 pts'),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 4.0),
                    child: ColorDot(
                        color: ThemeColors.recentActivity['streaming'])),
                Text('1 mês de streaming: 30000 pts'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
