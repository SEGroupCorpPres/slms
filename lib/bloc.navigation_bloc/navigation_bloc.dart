import 'package:bloc/bloc.dart';
import 'package:slms/section/parent_section/ChildrenPage/children_page.dart';
import 'package:slms/section/parent_section/HomePage/body.dart';
import 'package:slms/section/parent_section/PaymentPage/payment_page.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ChildrenPageClickedEvent,
  PaymentPageClickedEvent,
}

abstract class NavigationStates {}
class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);


  @override
  NavigationStates get initialState => ParentHomePageBody();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield ParentHomePageBody();
        break;
      case NavigationEvents.ChildrenPageClickedEvent:
        yield ChildrenPage();
        break;
      case NavigationEvents.PaymentPageClickedEvent:
        yield PaymentPage();
        break;
    }
  }
}