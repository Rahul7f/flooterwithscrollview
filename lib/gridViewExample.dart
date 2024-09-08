import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SliverFooter.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("GridViewExample"),),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1 / 1,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: Colors.yellow,
                );
              },
              childCount: 20,
            ),
          ),
          SliverFooter(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                color: Colors.black,
                child: Center(child: Text("this is footer",style: TextStyle(color: Colors.white),),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
