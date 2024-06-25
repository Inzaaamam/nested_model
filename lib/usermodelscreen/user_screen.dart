import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/usermodelscreen/cubit_cubit.dart';
import 'package:nested_model/usermodelscreen/cubit_state.dart';
class UserApiScreen extends StatelessWidget {
  const UserApiScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Api'),),
       body: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state is ListingError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.message}')),
            );
          }
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is ListingInitial) {
              return const Center(child: Text('Welcome!' , style: TextStyle(fontSize: 25),));
            } else if (state is ListingLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ListingLoaded){
              return ListView.builder(
                itemCount: state.listings.length,
                itemBuilder: (context, index) {
                  final listing = state.listings[index];
                  // ignore: unused_local_variable
                  final address = state.listings[index].address;
                  // ignore: unused_local_variable
                  final geo = state.listings[index].address?.geo;
                  final company = state.listings[index].company;
                  return  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    Text('Id : ${listing.id ?? 'Id'}'),
                    Text('Name : ${listing.name ?? 'name'}'),
                    Text('Username : ${listing.username ?? 'username'}'),
                    Text('Name : ${listing.email ?? 'email'}'),
                     const  Text('Address:'),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('City : ${ address?.city ?? 'city'}'),
                      Text(',  Street : ${ address?.street ?? 'Street'}'),
                      Text(',  Suit : ${ address?.suite ?? 'Suit'}'),
                      Text(',  ZipCode : ${ address?.zipcode ?? 'ZipCode'}'),
                    ],),
                  ),
                  Text('Phone : ${ listing.phone ?? 'phone'}'),
                      Text('Website : ${ listing.website ?? 'Website'}'),
                   Row(children: [
                 const  Text('Geo:  '),
                     Text('Lat : ${ geo?.lat ?? 'Lat'}'),
                    Text(',  Lng : ${ geo?.lng ?? 'Lat'}'),
                   ],),

                 const  Text('Compeny:'),
                     Text('Name : ${ company?.name ?? 'name'}'),
                     Text('CatchPhrase : ${ company?.catchPhrase ?? 'catchPhrase'}'),
                     Text('Bs : ${ company?.bs ?? 'bs'}'),
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
          context.read<UserCubit>().fetchListings();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}