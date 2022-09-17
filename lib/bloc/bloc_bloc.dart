import 'package:bloc/bloc.dart';
// import 'package:first_work/bottom_navigation_bar.dart';
// import 'package:first_work/log_out.dart';
// import 'package:first_work/myaccount.dart';
// import 'package:first_work/myorder.dart';
// import 'package:first_work/setting.dart';
// import 'package:first_work/wishlist.dart';
// ignore: depend_on_referenced_packages

enum NavigationEvent {
  homePageClikedEvent,
  myAccountClikedEvent,
  myOrdersClikedEvent,
  myWishListClickedEvent,
  mySettingClickedEvent,
  myLogoutClickedEvent,
  myNavigationBarClickedevent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvent, NavigationStates> {
  NavigationBloc(super.initialState) {
    on<NavigationEvent>((event, emit) {
      //   switch (event) {
      //     // case NavigationEvent.homePageClikedEvent:
      //     //   emit(const HomePage());
      //     //   break;
      //     case NavigationEvent.myAccountClikedEvent:
      //       emit(const MyAccount());
      //       break;
      //     case NavigationEvent.myOrdersClikedEvent:
      //       emit(const MyOrders());
      //       break;
      //     case NavigationEvent.myWishListClickedEvent:
      //       emit(const MyWishList());
      //       break;
      //     case NavigationEvent.mySettingClickedEvent:
      //       emit(const MySettingPage());
      //       break;

      //     case NavigationEvent.myLogoutClickedEvent:
      //       emit(const LogOut());
      //       break;
      //     case NavigationEvent.myNavigationBarClickedevent:
      //       emit(const NavBar());
      //       break;
      //   }
    });
  }
}
