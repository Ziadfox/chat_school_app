import 'package:bloc/bloc.dart';
import 'package:chat_school_app/shaerd/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class appCubit extends Cubit<appState>{
  appCubit():super(initialState());
  static appCubit get(context)=>BlocProvider.of(context);
  bool? isloading=false;
  void dataload({bool ?isloading})
  {
    isloading=isloading;
    emit(rigesterLoadingState());
  }

}