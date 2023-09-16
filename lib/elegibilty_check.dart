import 'package:ecocode_sbs/ParameterPages/green_cover.dart';
import 'package:ecocode_sbs/ParameterPages/rainwater_harvesting.dart';
import 'package:ecocode_sbs/ParameterPages/solar_usage.dart';
import 'package:ecocode_sbs/ParameterPages/wet_waste.dart';
import 'package:flutter/material.dart';

class EligibiltyPage extends StatefulWidget {
  double total = 0;
  EligibiltyPage({
    super.key,
    required this.total,
  });

  @override
  State<EligibiltyPage> createState() => _EligibiltyPageState();
}

class _EligibiltyPageState extends State<EligibiltyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0, left: 10),
            child: Text(
              'Subsidization Details',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              textAlign: TextAlign.start,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width / 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SolarUsage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 3.0, bottom: 1.5, left: 3, right: 1.5),
                            child: Card(
                              color: const Color.fromRGBO(254, 230, 78, 1),
                              elevation: 3,
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.sunny,
                                        size: 35,
                                      ),
                                    ),
                                    const Text(
                                      'Solar Usage',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        widget.total.toString(),
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width / 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GreenCover()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 3.0, bottom: 1.5, left: 1.5, right: 3),
                            child: Card(
                              color: const Color.fromARGB(255, 66, 227, 208),
                              elevation: 3,
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.forest_rounded,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      'Green Cover',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(children: [
                Row(
                  children: [
                    SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width / 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WetWaste()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1.5, bottom: 3, left: 3, right: 1.5),
                          child: Card(
                            color: const Color.fromARGB(255, 249, 160, 211),
                            elevation: 3,
                            child: SizedBox(
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.recycling,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      'Wet Waste',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width / 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RainHarvesting()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1.5, bottom: 3, left: 1.5, right: 3),
                          child: Card(
                            color: const Color.fromARGB(156, 66, 145, 224),
                            elevation: 3,
                            child: SizedBox(
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.water_drop,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      'Rainwater harvestation',
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, bottom: 10.0, left: 15.0),
                    child: SizedBox(
                      height: 22,
                      width: double.infinity,
                      child: Text(
                        'Your Subsidizations',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Original Rate',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                width: 175,
                              ),
                              Text('Value')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Subsidized Rate',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                'Value',
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
