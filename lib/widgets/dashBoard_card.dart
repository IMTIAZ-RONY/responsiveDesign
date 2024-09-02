import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration:BoxDecoration(
                color: Colors.pink,
                borderRadius:BorderRadius.circular(8),
              ),
              child:Icon(Icons.timelapse,
                color:Colors.white ,) ,
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSingleSection(
                    "Sales",
                    "12345"
                ),
                _buildSingleSection(
                    "Volume",
                    "1234534"
                ),
              ],
            ),

          ],
        ),
      ) ,
    );
  }

Widget _buildSingleSection(String title, String number) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
          Text(title,style:TextStyle(fontSize: 18,fontWeight:FontWeight.w600 ) ,),
          Text(number),
        ],);
  }
}