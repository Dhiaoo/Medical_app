import 'package:flutter/material.dart';
import 'package:medical_app/pages/doctor_card.dart';

import '../Widgets/category_cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text("Dear User",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[300],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("How do you feel ?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Fill out your medical card right now",
                            style: TextStyle(
                                fontSize: 14
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child: Text("Get Started",
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],),
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "How can we help you ?"
                  ),

                ),
              ),
            ),
            SizedBox(height: 8.0,),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(path: "lib/icons/medicament.png", txt: "Pharmacist",),
                  CategoryCard(path: "lib/icons/surgeon.png", txt: "Surgeon",),
                  CategoryCard(path: "lib/icons/tooth.png", txt: "Dentist",),
                ],
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor list",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("See All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8.0,),
               Expanded(
                 child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DoctorCard(Img: 'lib/images/doctor1.jpg', DocName: 'Dr. Arlene Mc Coy', rating: 4.6, exper: '7 years '),
                      DoctorCard(Img: 'lib/images/doctor2.jpg', DocName: 'Dr. user12345', rating: 3.0, exper: '9 years'),
                      DoctorCard(Img: 'lib/images/doctor3.jpg', DocName: 'Dr. user461561', rating: 5.5, exper: '13 years'),
                      DoctorCard(Img: 'lib/images/doctor1.jpg', DocName: 'Dr. 4684adsf464', rating: 2.5, exper: '15 years'),
                    ],
                  ),
               ),
          ],
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (){ },
                  icon: Icon(Icons.home,
                    size: 32,
                    color: Colors.deepPurple[300],
                  )
              ),
              IconButton(
                  onPressed: (){ },
                  icon: Icon(Icons.list_alt_outlined,
                    size: 32,
                    color: Colors.deepPurple[300],
                  )
              )
            ],
          ),
        ),
      ),

    );
  }
}

