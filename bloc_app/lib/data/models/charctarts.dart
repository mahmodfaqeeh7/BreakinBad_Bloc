import 'package:flutter/material.dart';


class Character
{
   late int charID ;
   late String name  ;
   late String nickname;
   late String image ;
   late List<dynamic> jobs;
   late String aliveordead ;
   late List<dynamic> appearnceBB ;
   late String actorname ;
   late String catogryforseries;
   late List<dynamic> appearncesaul;

   Character.fromJson (Map<String , dynamic> json){
    charID = json["char_id"];
    name = json["name"];
    nickname = json["nickname"];
    image = json["img"];
    jobs = json["occupation"];
    aliveordead = json["status"];
    appearnceBB = json["appearance"];
    catogryforseries = json["category"];
    appearncesaul = json["better_call_saul_appearance"];
    actorname = json["portrayed"];
    }
}