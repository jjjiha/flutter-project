import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ticket_app/bloc/bottom_nav_bloc.dart';
import 'package:ticket_app/bloc/bottom_nav_events.dart';
import 'package:ticket_app/bloc/bottom_nav_states.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/profile/profile.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';
import 'package:ticket_app/provider/bottom_nav_provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  // list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
      print('my state is $state');

      if (state is BottomNavBarSelected) {
        // print(state.selectedIndex);
        return Scaffold(
          body: appScreens[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (int index) {
              context.read<BottomNavBloc>().add(OnItemTapped(index));
            },
            // onTap: ref.watch(bottomNavBarNotifierProvider.notifier).onItemTapped,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color.fromARGB(255, 73, 67, 67),
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profiles"),
            ],
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
