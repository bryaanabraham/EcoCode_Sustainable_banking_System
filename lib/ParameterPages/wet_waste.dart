import 'package:ecocode_sbs/elegibilty_check.dart';
import 'package:flutter/material.dart';

class WetWaste extends StatefulWidget {
  const WetWaste({Key? key}) : super(key: key);

  @override
  State<WetWaste> createState() => _WetWasteState();
}

class _WetWasteState extends State<WetWaste> {
  bool _isExpandeIntro = false;
  bool _isExpandeDisc = false;
  final String introductionText = 'Introduction';
  final String introExpanded =
      'expanded information to be displayed when the panel is expanded.';
  final String disclaimerText = 'Disclaimer';
  final String discExpanded =
      'expanded information to be displayed when the panel is expanded.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 160, 211),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Wet Waste',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Column(
                children: [
                  Card(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        introductionText,
                        style: const TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(_isExpandeIntro
                          ? Icons.expand_less
                          : Icons.expand_more),
                      onTap: () {
                        setState(() {
                          _isExpandeIntro = !_isExpandeIntro;
                        });
                      },
                    ),
                  ),
                  if (_isExpandeIntro)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        introExpanded,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  Card(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        disclaimerText,
                        style: const TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(_isExpandeDisc
                          ? Icons.expand_less
                          : Icons.expand_more),
                      onTap: () {
                        setState(() {
                          _isExpandeDisc = !_isExpandeDisc;
                        });
                      },
                    ),
                  ),
                  if (_isExpandeDisc)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        discExpanded,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Daily Wet Waste Generation(Kgs): ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'eg: 123.45',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Number of Days: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'eg: 123.45',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Waste Reduction(%): ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'eg: 123.456',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // _output = await _calculator.calculateOutput(
                  //   _panelPower,
                  //   _solarHoursPerDay,
                  //   _environmentalFactor,
                  // );

                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EligibiltyPage(
                          total: 0,
                        ),
                      ),
                    );
                  });
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
