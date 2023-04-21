import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SwitchTabs extends StatelessWidget {
  const SwitchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 529,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: FaIcon(FontAwesomeIcons.tableCells, color: Colors.black),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.user, color: Colors.black),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/4/46/210928_Jisoo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://static.independent.co.uk/2021/05/29/22/newFile.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://i.dailymail.co.uk/i/pix/2017/05/31/14/40A0058900000578-0-image-a-186_1496238102575.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://a.espncdn.com/photo/2021/0709/r878390_864x1296_2-3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://i.dailymail.co.uk/i/pix/2017/05/31/14/40A0058900000578-0-image-a-186_1496238102575.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://a.espncdn.com/photo/2021/0709/r878390_864x1296_2-3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://i.dailymail.co.uk/i/pix/2017/05/31/14/40A0058900000578-0-image-a-186_1496238102575.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://a.espncdn.com/photo/2021/0709/r878390_864x1296_2-3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://ftw.usatoday.com/wp-content/uploads/sites/90/2022/07/fifa-18-cristiano-ronaldo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/4/46/210928_Jisoo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://static.independent.co.uk/2021/05/29/22/newFile.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://i.dailymail.co.uk/i/pix/2017/05/31/14/40A0058900000578-0-image-a-186_1496238102575.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.teal[100],
                        child: Image.network(
                          "https://a.espncdn.com/photo/2021/0709/r878390_864x1296_2-3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
