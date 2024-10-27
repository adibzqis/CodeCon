import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> dashboardData = [
    {
      "id": 1,
      "title": "Health Monitoring",
      "icon": Icons.local_hospital,
      "backgroundColor": const Color.fromARGB(255, 13, 215, 2),
    },
    {
      "id": 2,
      "title": "Personal Reminders",
      "icon": Icons.health_and_safety_rounded,
      "backgroundColor": Colors.pink,
    },
    {
      "id": 3,
      "title": "Educational Content",
      "icon": Icons.book,
      "backgroundColor": Colors.purple,
    },
    {
      "id": 4,
      "title": "Consultation",
      "icon": Icons.chat,
      "backgroundColor": Colors.blue,
    },
    {
      "id": 5,
      "title": "Check-Up Scheduling",
      "icon": Icons.calendar_month_rounded,
      "backgroundColor": Colors.deepOrange,
    },
    {
      "id": 6,
      "title": "Sport Content",
      "icon": Icons.directions_run,
      "backgroundColor": const Color.fromARGB(255, 241, 254, 0),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 235, 238),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Color.fromARGB(255, 1, 78, 98), fontSize: 26.0),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 204, 235, 238),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.only(bottom: 20),
            child: const ListTile(
              title: Text(
                'Welcome, Username',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 78, 98),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'sini takde idea nk letak ape',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 78, 98),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dashboardData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                final data = dashboardData[index];
                return InkWell(
                  onTap: () {
                    print('ID: ${data['id']}');
                    print('Title: ${data['title']}');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 235, 238),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: data['backgroundColor'],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            data['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          data['title'],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 1, 78, 98)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
