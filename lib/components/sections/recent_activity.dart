import 'package:appLayouts/components/box_card.dart';
import 'package:appLayouts/components/color_dot.dart';
import 'package:appLayouts/components/content_division.dart';
import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

// aqui crio uma classe privada com o _
class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saída'),
                    Text.rich(
                      TextSpan(
                        text: "\$",
                        //aqui preciso retirar depois que o bodyMedium: estiver funcionando
                        style: TextStyle(fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: "9900.97",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Entrada'),
                  Text.rich(
                    TextSpan(
                      text: "\$",
                      //aqui preciso retirar depois que o bodyMedium: estiver funcionando
                      style: TextStyle(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: "9332.35",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ])
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.00, bottom: 8.00),
          child: Text('Limite de gastos: \$432.93'),
        ),
        //aqui uso para a barra de rolagem ficar rodando sempre
        Container(
          //aqui uso para deixar minha barra de progesso do tamanho da minha caixa assim eu consigo arredondar
          // as bordas
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: LinearProgressIndicator(
            //coloco um value para a barra de progresso não ficar rodando pra sempre
            value: 0.3,
            minHeight: 8.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.00),
          child: ContentDivision(),
        ),
        Text(
            'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Diga-me como!',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
