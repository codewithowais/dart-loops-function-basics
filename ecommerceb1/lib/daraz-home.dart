import 'package:flutter/material.dart';

class DrarazHomeView extends StatefulWidget {
  const DrarazHomeView({super.key});

  @override
  State<DrarazHomeView> createState() => _DrarazHomeViewState();
}

class _DrarazHomeViewState extends State<DrarazHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
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
              itemCount: 200,
              itemBuilder: (context, index) {
                return Text("data ${index}");
              },
            )
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 200,
            //     itemBuilder: (context, index) {
            //       return Text("data ${index}");
            //     },
            //   ),
            // )

            // Expanded(
            //     child: Container(
            //   color: Colors.green,
            // )),
            // Expanded(
            //     child: Container(
            //   color: Colors.purple,
            // ))
          ],
        ),
      ),
    );
  }
}
