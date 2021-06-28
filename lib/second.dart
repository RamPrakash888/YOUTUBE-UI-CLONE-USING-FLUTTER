import 'package:firstproject/video.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/data.dart';
class second extends StatefulWidget {
  final YoutubeModel va;
  const second({Key? key,required this.va}) : super(key: key);// constructor, assigning value

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    Widget icofun(IconData icon,String t)
    {
      return Column(
          children: [
            Icon(icon,color: Colors.grey[700],),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(t,style: TextStyle(color: Colors.grey[700]),),
            )
          ],
        );
      
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Image.asset(widget.va.thumbNail,fit: BoxFit.cover,),
                ),
              ),
              Column(
              children:[
              ListTile(
                title: Text(widget.va.title),
                subtitle: Text(widget.va.viewCount),

                trailing: Icon(Icons.more_vert),


              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      icofun(Icons.thumb_up,widget.va.likeCount),
                      icofun(Icons.thumb_down,widget.va.dislikeCount),
                      icofun(Icons.share,"Share"),
                      icofun(Icons.cloud_download,"Download"),
                      icofun(Icons.playlist_add,"Save"),


                    ],
                  ),
                ),

              ),

                       Container(
                         decoration: BoxDecoration(
                           border: Border(
                             top: BorderSide(
                               width: 0.5

                             ),bottom: BorderSide(
                             width: 0.5
                           )
                           )
                         ),
                         child: Row(

                          children: [
                            Expanded(
                           child: ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage(widget.va.thumbNail),),
                              title: Text(widget.va.channelTitle,overflow:TextOverflow.ellipsis ,),
                              subtitle: Text("20,000 susbcribers"),
                            ),),FlatButton.icon(onPressed: (){}, icon:Icon(Icons.subscriptions,color: Colors.red,size: 30,), label:Text("SUBSCRIBE",style: TextStyle(color: Colors.red,fontSize: 20,)))
                          ],
                      ),
                       ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                         Text("Up next",style: TextStyle(fontSize: 20),),
                         Switch(value: true, onChanged:(q){})
                        ],
                      ),
                    ),
              


           vid()

            ])]),
      )
        ,

      
    );
  }
}
