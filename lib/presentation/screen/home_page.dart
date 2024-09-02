import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/nav_menu.dart';
import 'package:responsive_design/widgets/responsive_builder.dart';

import '../../widgets/dashBoard_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        )),
      ),
      drawer: NavMenu(),
      body: SingleChildScrollView(
         child: Column(
          children: [
            _getSummarySection(crossAxisCount: 1, ratio: 2.6),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
            child: SingleChildScrollView(
               child: Column(
                children: [
                  _getSummarySection(
                    crossAxisCount: 2,
                    ratio:2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
            child: SingleChildScrollView(
               child: Column(
                children: [
                  _getSummarySection(
                    crossAxisCount: 4,
                    ratio: 1.5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getSummarySection(
      {required int crossAxisCount, required double ratio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      children: [
        DashBoardCard(),
        DashBoardCard(),
        DashBoardCard(),
        DashBoardCard(),
      ],
    );
  }
}
