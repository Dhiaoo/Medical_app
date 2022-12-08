import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {Key? key,
        required this.Img,
      required this.DocName,
      required this.rating,
      required this.exper,

      })
      : super(key: key);
  final String DocName;
  final rating;
  final String exper;
  final String Img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                Img,
                height: 80,

              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(
                  rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              DocName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(exper),
          ],
        ),
      ),
    );
  }
}
