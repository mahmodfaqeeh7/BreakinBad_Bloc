import 'package:bloc_app/data/api/api.dart';
import 'package:bloc_app/data/repos/charsrepos.dart';
import 'package:bloc_app/presentation/screens/chars_screen.dart';
import 'package:bloc_app/presentation/screens/char_details.dart';
import 'package:bloc_app/busnisess_logic/cubit/char_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRouter{

  late CharRepo charrepo ;
  late Charcubit charcubit;

  AppRouter(){
    charrepo = CharRepo(CharsAPI());
    charcubit = Charcubit(charrepo);

  }

  Route? generate(RouteSettings settings)
  {
    switch(settings.name) {
      case '/' :
      return MaterialPageRoute(
          builder: (_)=> BlocProvider(
          create: (BuildContext contxt)=> charcubit,
          child: Charsscreen(),
          )
      );

    case '/char_details':
      return MaterialPageRoute(builder: (_)=> Chardetails());
    }

  }

}