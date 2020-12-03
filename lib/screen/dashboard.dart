import 'package:flutter/material.dart';
import 'package:hoodie_collection/screen/bottom_bar.dart';

class Dashboard extends StatelessWidget {
  final String username, password;

  const Dashboard({Key key, this.username, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 3 / 2),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.all_inclusive,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Unlimited Disc.",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ), //catergoryitem
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.attach_money_rounded,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Expensive Hoodie",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.auto_fix_normal,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Customizeable",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.badge,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Formal",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.motorcycle,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Riding",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.card_giftcard_outlined,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Special Gift",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              "Recommendation",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,
                  padding: EdgeInsets.all(15.0),
                  children: <Widget>[
                    _cardElm(
                      'Hoodie Astronaut',
                      '\Rp359.000',
                      'assets/images/hoodie_astro.jpg',
                    ),
                    _cardElm(
                      'Hoodie Ghost',
                      '\Rp459.000',
                      'assets/images/hoodie_ghost.jpg',
                    ),
                    _cardElm(
                      'Hoodie Grey',
                      '\Rp300.000',
                      'assets/images/hoodie_grey.jpg',
                    ),
                    _cardElm(
                      'Hoodie Tye Dye',
                      '\Rp529.000',
                      'assets/images/hoodie_tyedye.jpg',
                    ),
                    _cardElm(
                      'Hoodie White',
                      '\Rp309.000',
                      'assets/images/hoodie_white.jpg',
                    ),
                    _cardElm(
                      'Hoodie 3 Color',
                      '\Rp389.000',
                      'assets/images/hoodie_yhw.jpg',
                    ),
                  ],
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget _cardElm(String name, String price, String imgPath) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
        child: Column(
          children: [
            Hero(
              tag: imgPath,
              child: Container(
                height: 150.0,
                width: 215.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              name,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Hello !, " + username,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Search here ...",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)),
        )
      ]),
    );
  }
}
