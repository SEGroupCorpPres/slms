import 'package:bloc/bloc.dart';
import 'package:slms/section/parent_section/ChildrenPage/children_page.dart';
import 'package:slms/section/parent_section/HomePage/body.dart';
import 'package:slms/section/parent_section/PaymentPage/payment_page.dart';
import 'package:slms/section/teacher_section/HomePage/body.dart';
import 'package:slms/views/LogInPage/components/body.dart';
import 'package:slms/views/about_page.dart';
import 'package:slms/views/help_page.dart';

enum NavigationEvents {
  BibliotikerHomePageClickedEvent,
  ParentHomePageClickedEvent,
  ChildrenPageClickedEvent,
  PaymentPageClickedEvent,
  AboutPageClickedEvent,
  HelpPageClickedEvent,
}

abstract class NavigationStates {}
class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);
  static final isParent = Body();
  static final isBibliotiker = Body();

  // ignore: missing_return
  NavigationStates get initialState {
      if(isParent.isParent == true) {
        return ParentHomePageBody();
      }
      if(isBibliotiker.isBibliotiker == true){
        return ParentHomePageBody();
      }
      if(isParent.isParent == true && isBibliotiker.isBibliotiker == true){
        return ParentHomePageBody();
      }
  }

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case NavigationEvents.ParentHomePageClickedEvent:
        yield ParentHomePageBody();
        break;
      case NavigationEvents.ChildrenPageClickedEvent:
        yield ChildrenPage();
        break;
      case NavigationEvents.PaymentPageClickedEvent:
        yield PaymentPage();
        break;
      case NavigationEvents.HelpPageClickedEvent:
        yield HelpPage(title: 'Yordam',);
        break;
      case NavigationEvents.AboutPageClickedEvent:
        yield AboutPage(title: 'Ilova haqida',);
        break;
      case NavigationEvents.BibliotikerHomePageClickedEvent:
        yield BibliotikerHomePageBody();
        break;
    }
  }
}