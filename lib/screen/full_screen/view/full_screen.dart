import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class fullscreen extends StatefulWidget {
  const fullscreen({Key? key}) : super(key: key);

  @override
  State<fullscreen> createState() => _fullscreenState();
}

class _fullscreenState extends State<fullscreen> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue=Provider.of<Homeprovider>(context,listen: true);
    hpfalse=Provider.of<Homeprovider>(context,listen: false);
     int index=ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 5),
              Icon(Icons.more_vert,color: Colors.black,),
            ],
          ),
        ],
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(height: 60,width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),child: Image.asset("${hpfalse!.images[index]}",fit: BoxFit.cover,),),
              title: Text("${hpfalse!.name[index]}",style: TextStyle(fontSize: 17),),
              subtitle:  Text("${hpfalse!.subname[index]}",style: TextStyle(fontSize: 13),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("4.6 *",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Text("95k reviews",style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 2,
                color: Colors.grey.shade400,
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text("5M +",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Text("Download",style: TextStyle(color: Colors.black),),
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 2,
                color: Colors.grey.shade400,
              ),
              SizedBox(width: 20,),
              Column(
                children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.local_offer,color: Colors.black,),
              ),
                  Text("Everyone",style: TextStyle(color: Colors.black),),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(height: 30,width: 350,
            color: Colors.green.shade800,
            child: Center(child: Text("Install",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Colors.black),
            child: Image.asset("${hpfalse!.images[index]}",fit: BoxFit.contain,),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 30,
            child: ListTile(
              title: Text("About this game",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward,color: Colors.black,),
            ),
          ),
          SizedBox(height: 8,),
          ListTile(
            title: Text("Discover the endless desert",style: TextStyle(color: Colors.black,fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    border: Border.all(width: 2,color: Colors.grey)

                  ),
                  child: Center(child: Text("Action")),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      border: Border.all(width: 2,color: Colors.grey)

                  ),
                  child: Center(child: Text("Editor's choice")),
                ),

              ],
            ),
          ),
          SizedBox(height: 7,),
          Container(
            width: double.infinity,
            height: 30,
            child: ListTile(
              title: Text("Rating & Reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward,color: Colors.black,),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("4.6",style: TextStyle(color: Colors.green.shade700,fontSize: 60,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Container(
                  height: 80,
                  width: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(height: 8,
                          width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green.shade900,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Container(height: 8,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Container(height: 8,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 160),
                        child: Container(height: 8,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),


                    ],
                  ),
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
