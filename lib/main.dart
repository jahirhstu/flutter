import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: FlutterLogo(colors: Colors.green, size: 25),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.white,
                alignment: Alignment(0, -0.4),
                child: Text(
                  'Get coaching',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: Text(
                              'YOU HAVE',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                            child: Text(
                              '206',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 40),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 110.0),
                      Container(
                        margin: EdgeInsets.only(right: 25.0),
                        height: 60,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Buy more',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[
              _buildCard('Gang', 'Available', 1),
              _buildCard('Of', 'Away', 2),
              _buildCard('Four', 'Available', 3),
              _buildCard('Rehan', 'Away', 4),
              _buildCard('Roman', 'Available', 5),
              _buildCard('Miki', 'Available', 6),
              _buildCard('Gang', 'Away', 7),
              _buildCard('Gang', 'Available', 8),
            ],
          ),
        ],
      ),
    );
  }

  _buildCard(String name, String status, int cardIndex) {
    return Card(
      margin: cardIndex % 2 == 0
          ? EdgeInsets.only(right: 25.0)
          : EdgeInsets.only(left: 25.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/autobazar-5fc52.appspot.com/o/rsz_mdabdullah_al_roman.jpg?alt=media&token=039c4847-1972-405d-9ea0-23348694f054',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: status == 'Available' ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0
                    )),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            status,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: status == 'Available' ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text('Request'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
