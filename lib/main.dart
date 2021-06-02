import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicapp_credixcotask/repo/Track_repo.dart';
import 'package:musicapp_credixcotask/ui/home_page.dart';

import 'bloc/Track_bloc.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.black),
    title: "Music App",
    home: MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => Track_Bloc(repository: TrackRepositoryImpl()),
            child: Home_Page()),
        BlocProvider(
          create: (context) => ParticularTrack_Bloc(
              repository: TrackRepositoryImpl(), Trackid: ""),
        ),
        BlocProvider(
          create: (context) => FavTrack_Bloc(repository: TrackRepositoryImpl()),
        ),
      ],
      child: Home_Page(),
    ),
    // home: BlocProvider(
    //     create: (context) => Track_Bloc(repository: TrackRepositoryImpl()),
    //     child: Home_Page())
  ));
}
