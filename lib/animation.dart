import 'package:ecocode_sbs/ParameterPages/green_cover.dart';
// import 'package:ecocode_sbs/rainwater_harvesting.dart';
// import 'package:ecocode_sbs/solar_usage.dart';
// import 'package:ecocode_sbs/wet_waste.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EntryPage());
}

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home:
          const AnimatedEntryPage(), // Use AnimatedEntryPage instead of GreenCover
    );
  }
}

class AnimatedEntryPage extends StatefulWidget {
  const AnimatedEntryPage({super.key});
  @override
  _AnimatedEntryPageState createState() => _AnimatedEntryPageState();
}

class _AnimatedEntryPageState extends State<AnimatedEntryPage>
    with SingleTickerProviderStateMixin {
  bool _isVisible = false; // To control the visibility of the content
  late final AnimationController controller; // Define an AnimationController

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: 600), // Set the same duration as the animation
    );

    // Delay the animation for a few milliseconds after the page is built
    Future.delayed(
      const Duration(milliseconds: 600),
      () {
        setState(
          () {
            _isVisible = true;
            controller.forward(); // Start the animation
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: const Duration(
              milliseconds: 600), // Adjust the duration as needed
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 0.05), // Slide from bottom to top
              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                curve: Curves.easeOut, // Use a suitable curve
                parent: controller, // Use the controller to drive the animation
              ),
            ),
            child: const GreenCover(),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }
}
