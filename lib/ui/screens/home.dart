import 'package:appointment/global.dart';
import 'package:appointment/ui/screens/details.dart';
import 'package:appointment/ui/screens/menu.dart';
import 'package:appointment/ui/widgets/doctor_container.dart';
import 'package:flutter/material.dart';

import 'notifications.dart';

TimeOfDay sDate = TimeOfDay.now();
bool isAppointment = false;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MenuPage(),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
          title: Text('Demo Consultant'),
          actions: [
            GestureDetector(
              child: (isAppointment)
                  ? Icon(Icons.add_alert, color: Colors.red)
                  : Icon(Icons.add_alert),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocalNotifications(),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello,",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(color: Colors.grey),
                            ),
                            Text(
                              "Users",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage("$avatar"),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      filled: true,
                      fillColor: MyColors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(id: 0),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                "https://dmi-uploads.imgix.net/general/What-Skills-Do-I-Need-to-Be-a-Marketing-Consultant_Final.jpg?fm=jpg&ixlib=php-1.1.0&q=3&w=2060&s=a214a3f5676669c2aa2c09779065fb43",
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              padding: const EdgeInsets.all(11.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: MyColors.blue.withOpacity(.3),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Do you need help for your Company/Startup during Covid-19?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: MyColors.blue,
                                    child: Text(
                                      "Contact A Consultant",
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsScreen(id: 0),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  Text("Categories",
                      style: Theme.of(context).textTheme.headline6),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 9.0),
                    height: 71,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        categories.length,
                        (f) => Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width / 2),
                          margin: const EdgeInsets.symmetric(horizontal: 9.0),
                          padding: const EdgeInsets.all(9.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: MyColors.grey),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: categories[f]['color'],
                                  borderRadius: BorderRadius.circular(9.0),
                                ),
                                child: Image.asset("${categories[f]['icon']}"),
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: Text("${categories[f]['title']}"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: MyColors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Consultants",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      FlatButton(
                        child: Text("See All"),
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView.builder(
                    itemCount: doctorInfo.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) => DoctorContainer(id: i),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
