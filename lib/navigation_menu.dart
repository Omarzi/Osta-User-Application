import 'package:osta_app/features/chat/presentation/chat_screen.dart';
import 'package:osta_app/features/more/presentation/more_screen.dart';
import 'package:osta_app/utils/constants/exports.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationMenuCubit>();
    final darkMode = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationMenuCubit, int>(
        builder: (context, selectedIndex) {
          return NavigationBar(
            height: 80.h,
            elevation: 0,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) => cubit.setSelectedIndex(index),
            backgroundColor: darkMode ? OColors.black : Colors.white,
            indicatorColor: darkMode ? OColors.primaryDark.withOpacity(0.1) : OColors.primary.withOpacity(0.1),
            destinations: [
              const NavigationDestination(icon: Icon(Iconsax.box), label: 'Orders'),
              const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: SvgPicture.asset('assets/images/iconInNavigationBar.svg', height: 24.h), label: 'Home'),
              const NavigationDestination(icon: Icon(Iconsax.more_square), label: 'More'),
              const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
          );
        },
      ),
      body: BlocBuilder<NavigationMenuCubit, int>(
        builder: (context, selectedIndex) {
          return IndexedStack(
            index: selectedIndex,
            children: [
              ChatScreen(),
              // OrdersScreen(),
              Container(color: Colors.purple),
              // WishListScreen(),
              // Container(color: Colors.orange),
              HomeScreen(),
              // MoreScreen(),
              MoreScreen(),
              // ProfileScreen(),
              Container(color: Colors.pink),
            ],
          );
        },
      ),
    );
  }
}
