import 'package:osta_app/utils/constants/exports.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState(0));

  final PageController pageController = PageController();

  // Functions
  void updatePageIndicator(int index) {
    emit(OnBoardingState(index));
  }

  void dotNavigationClick(int index) {
    emit(OnBoardingState(index));
    pageController.jumpTo(index.toDouble());
  }

  void nextPage({required BuildContext context}) {
    final currentState = state;
    if (currentState.currentPageIndex == 2) {
      Navigator.of(context).pushNamed(ORoutesName.phoneLoginRoute);
    } else {
      final nextPage = currentState.currentPageIndex + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(OnBoardingState(nextPage));
    }
  }

  void skipPage() {
    const nextPage = 2;
    pageController.animateToPage(
      nextPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    emit(OnBoardingState(nextPage));
  }
}