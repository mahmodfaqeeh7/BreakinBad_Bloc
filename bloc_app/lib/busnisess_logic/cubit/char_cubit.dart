import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc_app/data/models/charctarts.dart';
import 'package:bloc_app/data/repos/charsrepos.dart';
part 'char_status.dart';

class Charcubit extends Cubit<Charstatus>{

  final CharRepo charrepo;
  Charcubit(this.charrepo) : super(charinit());
    List<dynamic> charcubitt= [] ;
     List<dynamic> allChars(){
      charrepo.getallchars().then((character)
      {
        emit(charsloaded(character));
        charcubitt = character;
      }
      );

   return charcubitt ;

    }


}