import 'package:appLayouts/components/box_card.dart';
import 'package:appLayouts/components/color_dot.dart';
import 'package:appLayouts/components/content_division.dart';
import 'package:appLayouts/components/sections/account_actions.dart';
import 'package:appLayouts/components/sections/header.dart';
import 'package:appLayouts/components/sections/pontos_conta.dart';
import 'package:appLayouts/components/sections/recent_activity.dart';
import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //aqui usei para não ultrapassar o espaço
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            RecentActivity(),
            AccountActions(),
            PontosConta()
          ],
        ),
      ),
    );
  }
}
