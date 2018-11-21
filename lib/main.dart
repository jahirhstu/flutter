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
                height: 60,
                color: Colors.white,
                alignment: Alignment.topCenter,
                child: Text(
                  'Get coaching',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 0.0),
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
                child: Row(children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                        child: Text(
                          'YOU HAVE',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
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
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 60,
                    width: 125,
                    padding: EdgeInsets.fromLTRB(5.0, 25.0, 25.0, 25.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[100].withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        'Buy more',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
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
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
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
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            mainAxisSpacing: 6.0,
            crossAxisSpacing: 2.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard(),
              _buildCard(),
              _buildCard(),
              _buildCard(),
            ],
          ),
        ],
      ),
    );
  }

  _buildCard() {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 1,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Column(
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
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Abdullah',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Available for the next five hours.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text('Request'),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
