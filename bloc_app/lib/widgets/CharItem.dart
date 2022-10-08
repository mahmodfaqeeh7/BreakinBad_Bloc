import 'package:bloc_app/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:bloc_app/data/models/charctarts.dart';
class CharItem extends StatelessWidget {

  final Character character;

  const CharItem({Key? key , required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Mycolors().mymid ,
        borderRadius: BorderRadius.circular(8),


      ),
      child: GridTile(child :
      Container(
       color: Mycolors().mymid,
       child: character.image.isNotEmpty ?
        FadeInImage.assetNetwork(width: double.infinity,height: double.infinity,
            placeholder: 'assets/loading.gif', image: character.image ,fit: BoxFit.cover,) :
       Image.asset('assets/33364-9-house-targaryen-transparent.png'),

       ),
        footer: Container(
          width: double.infinity, padding:
        EdgeInsets.symmetric(horizontal: 15 , vertical: 10 ),
          color: Colors.black87,
          alignment: Alignment.bottomCenter,

          child: Text('${character.name}' , style:  TextStyle(
            height: 1.3 ,
            fontSize: 16 ,
            color: Mycolors().mylight,fontWeight: FontWeight.bold,

           ),
          overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      
    );
  }
}
