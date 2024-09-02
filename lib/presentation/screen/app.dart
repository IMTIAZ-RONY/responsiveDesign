import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/screen/home_page.dart';
class ResponsivieDesign extends StatefulWidget {
  const ResponsivieDesign({super.key});

  @override
  State<ResponsivieDesign> createState() => _ResponsivieDesignState();
}

class _ResponsivieDesignState extends State<ResponsivieDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.light,
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
      ) ,
      home:HomePage() ,
    );
  }
}
