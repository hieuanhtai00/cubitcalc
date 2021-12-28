import 'package:bloc_demo/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_demo/cubit/calculator_cubit.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR', style: TextStyle(fontSize: 40)),
        centerTitle: true,
      ),
      body: MyCalculatorApp(),
    );
  }
}

class MyCalculatorApp extends StatelessWidget {
  MyCalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: BlocProvider<CalculatorCubit>(
        create: (_) => CalculatorCubit(),
        child: Column(
          children: [
            Expanded(child: OutputBar(), flex: 2),
            Expanded(child: InputBar(), flex: 8)
          ],
        ),
      ),
    );
  }
}

class OutputBar extends StatelessWidget {
  OutputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.black),
      child: Center(child: BlocBuilder<CalculatorCubit, String>(
        builder: (context, state) {
          return Text(
            state,
            style: TextStyle(fontSize: 40, color: Colors.white),
          );
        },
      )),
    );
  }
}

class InputBar extends StatelessWidget {
  InputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().cancel();
          },
          child: butc,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().cancel();
          },
          child: but$,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().cancel();
          },
          child: butpercent,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputOperator('/');
          },
          child: butdiv,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(7);
          },
          child: but7,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(8);
          },
          child: but8,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(9);
          },
          child: but9,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputOperator('+');
          },
          child: butsum,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(4);
          },
          child: but4,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(5);
          },
          child: but5,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(6);
          },
          child: but6,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputOperator('-');
          },
          child: butsub,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(1);
          },
          child: but1,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(2);
          },
          child: but2,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(3);
          },
          child: but3,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputOperator('*');
          },
          child: butmul,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().inputNumber(0);
          },
          child: but0,
        ),
        TextButton(
          onPressed: () {
            BlocProvider.of<CalculatorCubit>(context).cancel();
          },
          child: butdot,
        ),
        TextButton(
          onPressed: () {
            context.read<CalculatorCubit>().calculate();
          },
          child: butequal,
        ),
      ],
    );
  }
}
