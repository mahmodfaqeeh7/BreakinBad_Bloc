import 'package:bloc_app/busnisess_logic/cubit/char_cubit.dart';
import 'package:bloc_app/mycolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_app/widgets/CharItem.dart';

class Charsscreen extends StatefulWidget {
  const Charsscreen({Key? key}) : super(key: key);

  @override
  State<Charsscreen> createState() => _CharsscreenState();
}

  class _CharsscreenState extends State<Charsscreen> {

    late List<dynamic> allchars ;

    @override
    void initState() {
      super.initState();
      allchars = BlocProvider.of<Charcubit>(context).allChars();

    }
     Mycolors mycolors = new Mycolors();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
       appBar: AppBar(
           backgroundColor: mycolors.mylight ,
           title: Text("Breakingbad api", style: TextStyle(color: mycolors.mydark), ),

       ),


       body: BuildBlocWidget() ,

      );
    }


    Widget BuildBlocWidget(){

          return BlocBuilder<Charcubit ,Charstatus>(builder: (context , state) {
            if(state is charsloaded)
              {
                  allchars = (state).chars;
                  return LoaddedlistWidget();
              }
            else {
               return Center(
                 child: CircularProgressIndicator(
                   color: Colors.amber,
                 ),
               );
            }


          } );
     }
    Widget LoaddedlistWidget()
      {
        return SingleChildScrollView(

          child: Container(
            color: mycolors.mydark,
            child: Column(
              children: [
                 BuildCharsList(),

              ],
            ),
          ),
        );
      }

  Widget BuildCharsList(){

      return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2 ,
        childAspectRatio: 2/3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,


      ),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: allchars.length,
          itemBuilder: (context , index){
              return CharItem(character: allchars[index],);

      },
      );
  }

}
