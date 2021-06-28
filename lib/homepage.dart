import 'package:firstproject/video.dart';
import 'package:flutter/material.dart';



class mainp extends StatefulWidget {
  const mainp({Key? key}) : super(key: key);

  @override
  _mainpState createState() => _mainpState();
}

class _mainpState extends State<mainp> {
  int val=0;
  void inc(int index) //bottom nav.bar index
  {
    setState(() {
      val=index;
    });
  }
  List<Widget> just=[
    vid(),
    Center(child: Text("trend"),),
    Center(child: Text("sub"),),
    Center(child: Text("inbox"),),
    Center(child: Text("lib"),)
  ]; //list of widgets , the index value can be used to change the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("images/logo.jpeg",width: 150,height: 300,),
        iconTheme: IconThemeData(color: Colors.grey), //same color for all icons

        actions: [ // for adding multiple icons in appbar
          IconButton(

              onPressed:(){},icon: Icon(Icons.videocam)),
          IconButton(
            onPressed:(){},icon: Icon(Icons.search),),
          IconButton(
            onPressed:(){},icon: Icon(Icons.account_circle),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: val, // first 0 and then changes to the icon number selected, used to select the initial icon to be selected
        onTap: inc,// calls inc function on each item icon tap, passes an icon index no. by default which is assiged to val and setstate to refresh
        fixedColor: Colors.red,
        items: [BottomNavigationBarItem(title:Text("Home"),icon:Icon(Icons.home)),
          BottomNavigationBarItem(title:Text("Trending"),icon:Icon(Icons.whatshot)),
          BottomNavigationBarItem(title:Text("Subscriptions"),icon:Icon(Icons.subscriptions)),
          BottomNavigationBarItem(title:Text("Inbox"),icon:Icon(Icons.mail)),
          BottomNavigationBarItem(title:Text("Library"),icon:Icon(Icons.folder))

        ],

      ),
      body: just[val], //when icon pressed in bot. bar val gets chaned and widet array value gets replaced
    );
  }
}
