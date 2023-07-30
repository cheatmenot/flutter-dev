import 'package:flutter/material.dart';

class SeriesExecutionScreen extends StatefulWidget {
  static const String id = 'series_execution_screen_id';

  const SeriesExecutionScreen({Key? key}) : super(key: key);

  @override
  State<SeriesExecutionScreen> createState() => _SeriesExecutionScreenState();
}

class _SeriesExecutionScreenState extends State<SeriesExecutionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: Colors.blueGrey,
          title: Text('Series Execution'),
        ),
        body: Container(
          padding: const EdgeInsets.only(
              top: 60.0, left: 20.0, right: 20.0, bottom: 30.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Series Execution'),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      16), // Set the border radius for rounded corners
                ),
                elevation: 5.0,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 100,
                      alignment: Alignment.centerLeft,
                      // Align the header text to the left
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      // Add padding for the header text
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Question 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10.0,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text('TEXT2'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
