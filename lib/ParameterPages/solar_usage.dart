import 'package:ecocode_sbs/elegibilty_check.dart';
import 'package:flutter/material.dart';

class SolarPanelCalculator {
  Future<double> calculateOutput(
    double panelPower,
    double solarHoursPerDay,
    double environmentalFactor,
  ) async {
    double output = panelPower * solarHoursPerDay * environmentalFactor;
    return output;
  }
}

// Create an instance of SolarPanelCalculator
SolarPanelCalculator calculator = SolarPanelCalculator();

class SolarUsage extends StatefulWidget {
  const SolarUsage({Key? key}) : super(key: key);

  @override
  State<SolarUsage> createState() => _SolarUsageState();
}

class _SolarUsageState extends State<SolarUsage> {
  bool _isExpandeIntro = false;
  bool _isExpandeDisc = false;
  final String introductionText = 'Introduction';
  final String introExpanded =
      'Solar power is clean, renewable, and fights climate change by reducing emissions. It\'s cost-effective, offers energy independence, lowers bills, and generates income by selling excess energy. Moreover, it boosts job creation and economic growth, making it an eco-friendly, sustainable, and economically smart energy choice';
  final String disclaimerText = 'Disclaimer';
  final String discExpanded =
      'Input your data you recieve from your solar power unit into the entries below. You will be redirected to the previous page where you will be able to see your eligibility status for loan subsidization';
  double panelPower = 0.0;
  double solarHoursPerDay = 0.0;
  double environmentalFactor = 0.0;

  double output = 545.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(254, 230, 78, 1),
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
                    'Solar Usage',
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
                    'Panel Power (kW): ',
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
                    'Solar Hours Per Day: ',
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
                    'Environmental Factor: ',
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
              ElevatedButton(
                onPressed: () async {
                  double output = await calculator.calculateOutput(
                    panelPower,
                    solarHoursPerDay,
                    environmentalFactor,
                  );

                  setState(() {
                    // Update the state with the calculated output
                    output = output;
                    EligibiltyPage(total: output);
                  });
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EligibiltyPage(total: output),
                    ),
                  );
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
