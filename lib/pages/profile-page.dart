import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Color(0xFF22215B),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/img/vector-left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/img/more-options.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(height: 60),
                    Positioned(child: Image.asset('assets/img/profile.png')),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Text(
                          'PRO',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF317B),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Neelesh  Chaudhary',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF22215B)),
              ),
              Text(
                'UI / UX Designer',
                style: TextStyle(fontSize: 13, color: Color(0XFF22215B)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(34, 33, 91, 0.6)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My Folders',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/img/add.png'),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('assets/img/settings.png'),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('assets/img/vector-right.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: myFoldersRight(),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recent Uploads',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/img/sort.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: recentUpload(),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My Folders',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/img/add.png'),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('assets/img/settings.png'),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('assets/img/vector-right.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: myFoldersLeft(),
        ),
      ]),
    );
  }
}

Widget myFoldersRight(){
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFEEF7FE),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/more-options-v-1.png'),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/img/folder-1.png'),
                SizedBox(height: 20),
                Text(
                  "Mobile Apps",
                  style: TextStyle(
                    color: Color(0xFF567DF4),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "December 20.2020",
                  style: TextStyle(
                    color: Color(0xFF567DF4),
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFBEC),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/more-options-v-2.png'),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/img/folder-2.png'),
                SizedBox(height: 20),
                Text(
                  "SVG Icons",
                  style: TextStyle(
                    color: Color(0xFFFFB110),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "December 14.2020",
                  style: TextStyle(
                    color: Color(0xFFFFB110),
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget recentUpload(){
  return Column(
    children: <Widget>[
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF7FE),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset('assets/img/word.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Projects.docx',
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'November 22.2020',
                      style: TextStyle(
                        color: Color.fromRGBO(34, 33, 91, 0.6),
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Text(
              '300kb',
              style: TextStyle(
                fontSize: 11,
                color: Color.fromRGBO(34, 33, 91, 0.6),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget myFoldersLeft(){
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFEEEEE),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/img/folder-3.png'),
                SizedBox(height: 20),
                Text(
                  "Prototypes",
                  style: TextStyle(
                    color: Color(0xFFAC4040),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "November 22.2020",
                  style: TextStyle(
                    color: Color(0xFFAC4040),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/more-options-v-3.png'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFF0FFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/img/folder-4.png'),
                SizedBox(height: 20),
                Text(
                  "SVG Icons",
                  style: TextStyle(
                    color: Color(0xFF23B0B0),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "December 14.2020",
                  style: TextStyle(
                    color: Color(0xFF23B0B0),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/more-options-v-1.png'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}