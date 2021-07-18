import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page1(),
    routes: {
      '/Page2': (context)=> Page2(),
      '/Page3': (context)=> Page3(),
  },

  ));
}
double total=0;
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double rating=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('How did you like our Service?',
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
           ),
          ),
          Slider(
            value: rating,
            onChanged: (double newRating1){
              setState(() => rating = newRating1);
            },
            min: 1,
            max: 5,
            divisions: 4,
            label: '$rating',
            activeColor: Colors.amber,
            inactiveColor: Colors.deepPurple,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                total+=rating;
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(builder: (context)=> Page2()),
                );
              }, child: Text('Next'),
            ),
          ),
        ],
      )
    );
  }
}
class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  double rating=1.0;
  double newRating2=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How did you appreciate the Sanitation?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Colors.yellow,
              ),
            child: Slider(
              value: rating,
              onChanged: (double newRating2){
                setState(() => rating = newRating2);
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: '$rating',
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
            ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  total+=rating;
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> Page3()),
                  );
                }, child: Text('Next'),
              ),
            ),
          ],
        ),
    );
  }
}
class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double rating=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How was the Sound Quality?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Slider(
              value: rating,
              onChanged: (double newRating3){
                setState(() => rating = newRating3);
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: '$rating',
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  total+=rating;
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> Page4()),
                  );
                }, child: Text('Next'),
              ),
            ),
          ],
        )
    );
  }
}
class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  double rating=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How was the Lightning?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Slider(
              value: rating,
              onChanged: (double newRating4){
                setState(() => rating = newRating4);
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: '$rating',
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  total+=rating;
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> Page5()),
                  );
                }, child:Text('Next'),
              ),
            ),
          ],
        ),
    );
  }
}
class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  double rating=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How likely are you to reccomend us to your friends?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Slider(
              value: rating,
              onChanged: (double newRating5){
                setState(() => rating = newRating5);
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: '$rating',
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  total+=rating;
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> Page6()),
                  );
                }, child: Text('Next'),
              ),
            ),
          ],
        )
    );
  }
}
class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  double rating=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How likely are you to come back here?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
            ),
            Slider(
              value: rating,
              onChanged: (double newRating6){
                setState(() => rating = newRating6);
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: '$rating',
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  total+=rating;
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> Page7()),
                  );
                }, child: Text('Next'),
              ),
            ),
          ],
        )
    );
  }
}
class Page7 extends StatefulWidget {
  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {

  void _reset() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => Page1(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(total>10 && total<21)
          Text(
            'Hope we serve you better next time '
                '$total',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.amber,
            ),
          ),
          if(total>20)
            Text(
              'We hope you come back next time '
                  '$total',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.green,
              ),
            ),
          if(total<11)
            Text(
              'We are sorry for your inconvenience '
                  '$total',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.red,
              ),
            ),
          Center(
           child: ElevatedButton(
             onPressed: (){
               total=0;
               Navigator.of(context)
                   .push(
                 MaterialPageRoute(builder: (context)=> Page1()),
               );
             }, child: Text('Restart'),
           ),
          ),
        ],
      ),
    );
  }
}




