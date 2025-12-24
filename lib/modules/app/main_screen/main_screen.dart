import 'package:flutter/material.dart';
import 'package:test_your_personalize_app/core/localization/app_localizations.dart';
import 'package:test_your_personalize_app/modules/app/home/pages/home_page.dart';
import 'package:test_your_personalize_app/modules/app/profile/pages/profile_page.dart';
import 'package:test_your_personalize_app/modules/app/personality_types/pages/personality_types_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PersonalityTypesPage(),
    const ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: const Icon(Icons.home),
              label: AppLocalizations.of(context)?.home ?? 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.psychology_outlined),
              activeIcon: const Icon(Icons.psychology),
              label: AppLocalizations.of(context)?.knowYourself ?? 'Know Yourself',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person),
              label: AppLocalizations.of(context)?.profile ?? 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

