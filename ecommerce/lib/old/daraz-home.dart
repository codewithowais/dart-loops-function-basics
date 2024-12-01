import 'package:flutter/material.dart';

class DarazHomeView extends StatefulWidget {
  const DarazHomeView({super.key});

  @override
  State<DarazHomeView> createState() => _DarazHomeViewState();
}

class _DarazHomeViewState extends State<DarazHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Expanded(
            // child: ListView.builder(
            //   itemCount: 100,
            //   itemBuilder:  (context, index) {
            //     return Text("data $index");
            //   },
            // ),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 30
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Text("Item $index"),
                    decoration: BoxDecoration(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
