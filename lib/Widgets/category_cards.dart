import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.path, required this.txt}) : super(key: key);
  final String path;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          padding: EdgeInsets.all(20), 
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)
      ),
          child: Row(
            children: [
              Image.asset(
                path,
                height: 30,
              ),
              SizedBox(width: 10,),
              Text(txt)
            ],
          )
      ),
    );
  }
}
