import 'package:blocstate/Cubit/cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
bool flag=true ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if(state is PlusState){print("Plus state");}
          if(state is MinusState){print("Minus State");}
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text("Bloc State"),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${BlocProvider.of<CounterCubit>(context).counter}",
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: flag?Colors.green:Colors.red,)),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).plus();
                        flag=true;
                      }, child: Icon(Icons.add),backgroundColor: Colors.green,),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).minus();
                        flag=false;
                      }, child: Icon(Icons.remove),backgroundColor: Colors.red,),

                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
