import 'package:flutter/material.dart';

// => : 함수 호출
// runApp(): Flutter의 최상위 함수
void main() => runApp(YApp());

/*
Yapp
  - 커스텀 위젯
  - runApp()이 불러온 위젯 트리의 최상위 위젯
  - 스크린 레이아웃을 최초로 빌드하는 역할 -> StatelessWidget
MaterialApp
: Flutter에서 제공하는 모든 material을 사용할 수 있도록 해주는 위젯
  - home: 앱이 실행될 때, 가장 먼저 보여지는 경로
 */

class YApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NINIZ",
      home: YHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*
Scaffold
: 앱 화면에 다양한 위젯을 배치하고 그릴 수 있도록 해주는 위젯
 */
class YHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("NINIZ"),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 161, 140, 123),
          letterSpacing: 2.0,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 253, 237, 188),
        elevation: 0.0,
        // actions: 복수의 아이콘 버튼이나 위젯을 오른쪽에 배치할 때 사용
        actions: [
          IconButton(
            onPressed: () {
              print("shopping cart button is clicked");
            },
            icon: Icon(Icons.shopping_cart)
          ),
          IconButton(
            onPressed: () {
              print("search button is clicked");
            },
            icon: Icon(Icons.search)
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("토레타"),
              accountEmail: Text("jyj@sixshop.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/jordi_img.png"),
              ),
              onDetailsPressed: () {
                print("arrow is clicked");
              },
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 144, 235, 165),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              // leading: 행 시작에 요소 추가 <-> trailing: 행 마지막에 요소 추가
              leading: Icon(Icons.home, color: Colors.grey,),
              title: Text("Home"),
              onTap: () {
                print("Home is clinked");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey,),
              title: Text("Setting"),
              onTap: () {
                print("Setting is clinked");
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey,),
              title: Text("Q&A"),
              onTap: () {
                print("Q&A is clinked");
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50.0, 40.0, 0.0, 0.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/niniz.png"),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 50.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("NAME",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 140, 123),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("죠르디",
                      style: TextStyle(
                        color: Colors.green[300],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text("POWER LEVEL",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 140, 123),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("10",
                      style: TextStyle(
                          color: Colors.green[300],
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("아직 학계에서 발표된 적 없는 종의 공룡",
                          style: TextStyle(
                            fontSize: 16.0,
                            letterSpacing: 1.0
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("니니즈 나이 서열 1위: 빙하에서 깨어난 어르신",
                          style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("인생 2막을 위해 취업 준비 중",
                          style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 50.0,
                ),
                Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/jordi.gif"),
                        backgroundColor: Colors.green[300],
                        radius: 120.0,
                      ),
                    )
                  ]
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}