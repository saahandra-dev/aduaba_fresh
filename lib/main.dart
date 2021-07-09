
import 'package:aduaba_fresh/utils/user_preference.dart';
import 'package:aduaba_fresh/views/categories.dart';
import 'package:aduaba_fresh/views/checkout_payment.dart';
import 'package:aduaba_fresh/views/edit_user_profile.dart';
import 'package:aduaba_fresh/views/forgot_password.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/views/onboarding.dart';
import 'package:aduaba_fresh/views/order_summary.dart';
import 'package:aduaba_fresh/views/orders.dart';
import 'package:aduaba_fresh/views/payment_card.dart';
import 'package:aduaba_fresh/views/selected_category.dart';
import 'package:aduaba_fresh/views/shipping_details.dart';
import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/views/create_account.dart';
import 'package:aduaba_fresh/views/splash_screen.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/wishlist.dart';
import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreference.init();

  runApp(AduabaFresh());
}

class AduabaFresh extends StatelessWidget {
  const AduabaFresh({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // textTheme: GoogleFonts.(
        //   Theme.of(context).textTheme
        // ),
        primarySwatch: Colors.green,
        accentColor: Colors.green
        ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        Onboarding.id: (context) => Onboarding(),
        SplashScreen.id: (context) => SplashScreen(),
        SignIn.id: (context) => SignIn(),
        CreateAccount.id: (context) => CreateAccount(),
        ForgotPassword.id: (context) => ForgotPassword(),
        HomePage.id: (context) => HomePage(),
        Categories.id: (context) => Categories(),
        SelectedCategory.id: (context) => SelectedCategory(),
        AccountDetails.id: (context) => AccountDetails(),
        EditUserProfile.id: (context) => EditUserProfile(),
        WishList.id: (context) => WishList(),
        Orders.id: (context) => Orders(),
        OrderSummary.id: (context) => OrderSummary(),
        PaymentCard.id: (context) => PaymentCard(),
        CheckoutPayment.id: (context) => CheckoutPayment(),
        ShippingDetails.id: (context) => ShippingDetails(),
        
      }
    );
  }
}