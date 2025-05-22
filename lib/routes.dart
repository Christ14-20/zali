import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/remedies/remedies_list_screen.dart';
import 'screens/remedies/remedy_detail_screen.dart';
import 'screens/diagnosis/diagnosis_screen.dart';
import 'screens/diagnosis/diagnosis_result_screen.dart';
import 'screens/appointment_screen.dart';
import 'screens/emergency_contact_screen.dart';
import 'screens/treatment_followup_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/community_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/remedies/remedies_list_screen.dart';
import 'screens/remedies/remedy_detail_screen.dart';
import 'screens/remedies/remedies_list_screen.dart';
import 'screens/remedies/remedy_detail_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  '/remedies': (context) => RemediesListScreen(),
  '/remedyDetail': (context) => RemedyDetailScreen(),
};


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => SplashScreen(),
  '/onboarding': (context) => OnboardingScreen(),
  '/login': (context) => LoginScreen(),
  '/register': (context) => RegisterScreen(),
  '/home': (context) => HomeScreen(),
  '/remedies': (context) => RemediesListScreen(),
  '/remedyDetail': (context) => RemedyDetailScreen(),
  '/diagnosis': (context) => DiagnosisScreen(),
  '/diagnosisResult': (context) => DiagnosisResultScreen(),
  '/appointment': (context) => AppointmentScreen(),
  '/emergencyContact': (context) => EmergencyContactScreen(),
  '/treatmentFollowup': (context) => TreatmentFollowupScreen(),
  '/profile': (context) => ProfileScreen(),
  '/community': (context) => CommunityScreen(),
  '/cart': (context) => CartScreen(),
  '/orders': (context) => OrdersScreen(),
};
