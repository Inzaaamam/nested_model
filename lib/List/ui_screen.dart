
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/List/cubit.dart';
import 'package:nested_model/List/state.dart';

class UIScreen extends StatelessWidget {
  const UIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Data'),),
      body: BlocListener<ModelCubit, ModelState>(
        listener: (context, state) {
          if (state is ModelError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.message}')),
            );
          }
        },
        child: BlocBuilder<ModelCubit, ModelState>(
          builder: (context, state) {
            if (state is ModelInitial) {
              return const Center(child: Text('Welcome!' , style: TextStyle(fontSize: 25),));
            } else if (state is ModelLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ModelLoaded){
              return ListView.builder(
                itemCount: state.listings.length,
                itemBuilder: (context, index) {
                  final listing = state.listings[index];
                 
                  return  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    Text('Id : ${listing.checklistId ?? 'Id'}'),
                    Text('Name : ${listing.name ?? 'Name'}'),
                    Text('ChklstStatus : ${listing.chklstStatus ?? 'ChklstStatus'}'),
                    Text('supervisorId : ${listing.supervisorId ?? 'supervisorId'}'),
                    Text('supervisorName : ${listing.supervisorName ?? 'supervisorName'}'),
                    Text('supervisorDesg : ${listing.supervisorDesg ?? 'supervisorDesg'}'),
                    Text('dateOfCreation : ${listing.dateOfCreation ?? 'dateOfCreation'}'),
                    Text('planMonth : ${listing.planMonth ?? 'planMonth'}'),
                    Text('totalVisits : ${listing.totalVisits ?? 'totalVisits'}'),
                    Text('planStatus : ${listing.planStatus ?? 'planStatus'}'),
                    Text('planDate  : ${listing.planDate ?? 'planDate '}'),
                    Text('actualDate  : ${listing.actualDate ?? 'actualDate '}'),
                    Text('planId  : ${listing.planId ?? 'planId'}'),
                    Text('visitId  : ${listing.planDate ?? 'visitId'}'),
                      ],),
                    ),
                   
                  );
                },
              );
            }
           else {
              return const Center(child: Text('Unknown state'));
            }
          },
        ),
        ),
         floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ModelCubit>().fetchData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}