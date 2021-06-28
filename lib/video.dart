import 'package:firstproject/data.dart';
import 'package:firstproject/second.dart';
import 'package:flutter/material.dart';
class vid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,itemBuilder: (context,index){

      return InkWell(// just to create a onpress on any widget or pic on the screen
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>second(va: youtubeData[index],)));// move from one screen to another
        },                                                                       //passing the value to another screen class
          child:Column(
        children: <Widget>[
             Container(
               width:MediaQuery.of(context).size.width, // complete width of device
               height: 200,
               child: Image.asset(youtubeData[index].thumbNail,fit: BoxFit.cover,),
             ),
          ListTile(
            contentPadding: EdgeInsets.all(4),
            leading:CircleAvatar(backgroundImage: AssetImage(youtubeData[index].thumbNail)) ,
            title: Text(youtubeData[index].title),
            subtitle: Text("${youtubeData[index].channelTitle}   .   ${youtubeData[index].viewCount}"),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ));
    }, separatorBuilder:(context,index)=>Divider(height: 4.0,color: Colors.grey,) //gad between each container in listview
      , itemCount: youtubeData.length,
        );
  }
}
