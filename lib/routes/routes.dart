import '../features/home/home.dart';
import '../features/sign_in/sign_in.dart';
import '../features/sign_up/sign_up.dart';
import '../features/hotel/hotel.dart';


final routes = {
  '/sign-up': (context) => const RegistrationPage(),
  '/sign-in': (context) => const LoginPage(),
  '/home': (context) => const HomePage(),
  '/hotel': (context) => const HotelPage(),
};