import 'package:flutter/material.dart';

class DarazHome2View extends StatefulWidget {
  const DarazHome2View({super.key});

  @override
  State<DarazHome2View> createState() => _DarazHome2ViewState();
}

class _DarazHome2ViewState extends State<DarazHome2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text("data $index");
              },
            ),
          ],
        ),
      ),
    );
  }
}
