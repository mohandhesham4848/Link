import 'package:basketball_app/cubit/states/counte_cubit.dart';
import 'package:basketball_app/cubit/states/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BlocProvider(
        create: (context) => CounteCubit(),
        child: pointsCounter(),
      ),
    );
  }
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int teamAPoints = 0;
    int teamBPoints = 0;

    return BlocConsumer<CounteCubit, CounterState>(
      listener: (context, state) {
        if (state is TeamACounterState) {
          teamAPoints = BlocProvider.of<CounteCubit>(context).teamAPoints;
        } else if (state is TeamACounterState) {
          teamBPoints = BlocProvider.of<CounteCubit>(context).teamBPoints;
        } else {
          teamBPoints = BlocProvider.of<CounteCubit>(context).teamBPoints;
          teamAPoints = BlocProvider.of<CounteCubit>(context).teamAPoints;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Team a', style: TextStyle(fontSize: 32)),
                        Text('$teamAPoints', style: TextStyle(fontSize: 150)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToA(1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToA(2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToA(3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Team B', style: TextStyle(fontSize: 32)),
                        Text('$teamBPoints', style: TextStyle(fontSize: 150)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToB(1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToB(2);
                          },
                          child: Text(
                            'Add 2 Point ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounteCubit>(
                              context,
                            ).addingvalueToB(3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounteCubit>(context).restValue();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
