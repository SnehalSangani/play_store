import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class top extends StatefulWidget {
  const top({Key? key}) : super(key: key);

  @override
  State<top> createState() => _topState();
}

class _topState extends State<top> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue=Provider.of<Homeprovider>(context,listen: true);
    hpfalse=Provider.of<Homeprovider>(context,listen: false);
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Show installed Apps"),
            trailing: Switch(
              onChanged: (value) {},value:false ,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'full',arguments: index);
                },

                child: ListTile(
                  leading: Container(height: 60,width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),

                  ),child: Image.asset("${hpfalse!.images[index]}",fit: BoxFit.cover,),),
                  title: Text("${hpfalse!.name[index]}",style: TextStyle(fontSize: 15),),
                  subtitle:  Text("${hpfalse!.subname[index]}",style: TextStyle(fontSize: 12),),
                ),
              );

            },itemCount:hpfalse!.name.length ,),
          ),
        ],
      ),

    ),
    );
  }
}
