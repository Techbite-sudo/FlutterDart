import 'dart:ffi';

import 'package:flutter/material.dart';

import '../util/hexcolor.dart';


class BillSplitter extends StatefulWidget {
  const BillSplitter({Key? key}) : super(key: key);

  @override
  State<BillSplitter> createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0;

  Color _purple = HexColor("#6908D6");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: _purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Total Per Person',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$123',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
    ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade100,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                      fontSize: 20,
                      color: _purple,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Bill Amount',
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: Colors.blue.shade700,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade400,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (exception) {
                        _billAmount = 0.0;
                      }
                    },

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Split',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                      ),
                    ],
                  )
            ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  var _index = 0;
  List quotes = [
    "Be the change that you wish to see in the world.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
    "The way to get started is to quit talking and begin doing. -Walt Disney",
    "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
    "Be the change that you wish to see in the world.",
    "The best way to predict the future is to create it.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "The future is in your hands and, as long as you hold on to it, you’ll keep anything you put your mind to.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.5),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                      style: const TextStyle(
                          fontSize: 16,
                        color: Colors.black,
                      fontStyle: FontStyle.italic,
                      ),
                    ) )
                ),
              ),
            ),
            const Divider(
              height: 5,
              thickness: 2.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    _showQuote();
                  });
                },

                icon: Icon(Icons.wb_sunny),
                color: Colors.green.shade700,
                label: const Text(
                    "Inspire me!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                ),

              ),
            ),
            const Spacer()
          ],
        )

      ),
    );
  }

  void _showQuote() {
    _index++;

  }
}


class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BizCard'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children:  [
            _getCard(),
            _getAvatar()

          ],
        )
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 300,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        boxShadow:  const [
          BoxShadow(
            color: Colors.black87,
            blurRadius: 10,
            offset: Offset(0, 10),
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("Ladesha Mwanza",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          ),
          Text("Build apps with Boniface.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              Text("+254712345678"),
            ],
          ),
        ],
      )
    );

  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          image: NetworkImage("https://picsum.photos/200/300"),
          fit: BoxFit.cover,
        ),
        boxShadow:  const [
          BoxShadow(
            color: Colors.black87,
            blurRadius: 10,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Icon(Icons.person),
    );


  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: const Text('Hello Boniface'),
            duration: const Duration(seconds: 2),
            backgroundColor: Colors.amberAccent.shade700,);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.amberAccent.shade700,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text("Button"),
      ),
    );

  }
}


class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);
  _ButtonPressed() {
    print('Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade200,
      appBar: AppBar(
        title: const Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('Search button pressed');
            },
          ),
          IconButton(
              icon: const Icon(Icons.email),
              onPressed: (){
                debugPrint("Email button pressed");
              },
          ),
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: (){
                debugPrint("Settings button pressed");
              },
          ),
          IconButton(onPressed: _ButtonPressed, icon: Icon(Icons.add)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent.shade700,
        onPressed: () {
          debugPrint('Floating Action Button Pressed');
        },
        child: const Icon(Icons.call_missed),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent.shade700,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent.shade700,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent.shade700,
            icon: Icon(Icons.email),
            label: 'Email',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent.shade700,
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black87,
        onTap: (int index) {
          debugPrint('Tapped: $index');
        },
      ),

      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget> [
            CustomButton()
            // InkWell(
            //   child: Text("Tap me!",
            //     style: TextStyle(fontSize: 24,),
            //     ),
            //   onTap: (){
            //     debugPrint("Tapped...");
            //   },
            //   ),
          ],
        ),
        ),

    );

  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text('Hello, Flutter!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),

      ),
    );


  }
}



