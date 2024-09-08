import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SliverFooter.dart';

  class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(title: Text("GridViewExample"),),
        body: CustomScrollView(
          slivers: [
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildBuilderDelegate((context, index) {
                return SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.orange.shade200,
                    ),
                  ),
                );
              }, childCount: 42),
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
