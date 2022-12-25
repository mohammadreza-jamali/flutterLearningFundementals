import 'package:flutter/material.dart';

class ImageSamples extends StatelessWidget {
  const ImageSamples({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl="https://hips.hearstapps.com/housebeautiful.cdnds.net/18/03/768x384/landscape-1516575127-linee-kitchen-wharfside-co-uk.jpg?resize=640:*";
    return Scaffold(
      appBar: AppBar(title: Text("Image Samples")),
      body: Column(
        children: [
           IntrinsicHeight(
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      child: Image.asset("assets/images/island.jpg")),
                ),
                Expanded(
                  child: Container(
                      child: Image.network(imageUrl)),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      //child: Text("M",style: Theme.of(context).textTheme.headline2,),
                      backgroundImage: NetworkImage(imageUrl),
                      //backgroundImage: AssetImage("assets/images/island.jpg"),
                      radius: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
          //  FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: imageUrl),
           FadeInImage(placeholder: AssetImage("assets/images/loading.gif"), image: NetworkImage(imageUrl)),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Placeholder(child: Icon(Icons.image,size: 100,),))
          

        ],
      ),
    );
  }
}