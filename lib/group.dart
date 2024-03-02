import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rap/home_page.dart';
import 'package:rap/info.dart';
//import 'package:rap/pattete.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'R.A.P',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  'R.A.P',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            Container(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              title: const Text('Information About R.A.P',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Info()),
                );
              },
            ),
            Container(
              height: 8,
              color: Colors.black,
            ),
            // Add more list tiles as needed
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 5, top: 10),
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: <Widget>[
                    FadeInLeft(
                      child: SizedBox(
                        height: 220,
                        width: 100,
                        child: getImageWidget(
                            'assets/images/prince.jpg'), // Adjust the image path here
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BounceInDown(
                      child: const Column(
                        children: [
                          Text(
                            'Prince Dubey',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Computer Science & Engineering',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '2108410100042',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '3rd Year',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Rajkiya Engineering College,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tSonbhadra',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Contact: 8006644674',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                color: Colors.black,
              ),
              SizedBox(
                child: Row(
                  children: <Widget>[
                    FadeInLeft(
                      child: SizedBox(
                        width: 100,
                        height: 220,
                        child: getImageWidget(
                            'assets/images/rajan.jpg'), // Adjust the image path here
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BounceInDown(
                      child: const Column(
                        children: [
                          Text(
                            'Rajan Jaiswal',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Computer Science & Engineering',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '2208410109004',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '3rd Year',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Rajkiya Engineering College,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tSonbhadra',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Contact: 9115265953',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                color: Colors.black,
              ),
              SizedBox(
                child: Row(
                  children: <Widget>[
                    FadeInLeft(
                      child: SizedBox(
                        width: 100,
                        height: 220,
                        child: getImageWidget(
                            'assets/images/anshuman.jpg'), // Adjust the image path here
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BounceInDown(
                      child: const Column(
                        children: [
                          Text(
                            'Anshuman Raj Mishra',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Computer Science & Engineering',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '2108410100015',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '3rd Year',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Rajkiya Engineering College,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tSonbhadra',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Contact: 9335334743',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageWidget(String imagePath) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        imagePath,
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
