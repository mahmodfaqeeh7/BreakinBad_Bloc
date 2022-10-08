import 'dart:ffi';

import 'package:bloc_app/data/api/api.dart';
import 'package:bloc_app/data/models/charctarts.dart';
import 'package:flutter/cupertino.dart';

class CharRepo
{
 final CharsAPI charsapi ;

  CharRepo(this.charsapi);

 Future<List<dynamic>> getallchars() async
 {
  final chars = await charsapi.getallchars();
  return chars.map((characters) => Character.fromJson(characters)).toList();
 }
}