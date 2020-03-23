import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_modular/app/repositorise/poker_repository.dart';
import 'package:projeto_modular/app/shared/utils/constants.dart';


import 'home_controller.dart';
import 'homepage.dart';



class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
   Bind((i) => HomeController(i.get<PokeRepository>())),
   Bind((i) => PokeRepository(i.get<Dio>())),
   Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
    
  ];

  @override
   List<Router> get routers => [
   Router('/', child: (_, args) => HomePage()),
   ];
}