// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:first_work/components/custom_button.dart';
import 'package:first_work/home_page.dart';
import 'package:first_work/login_signup_screen.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LocalAuthApi {
  LocalAuthentication auth = LocalAuthentication();

  Future authenticate() async {
    final bool isBiometricsAvailable = await auth.isDeviceSupported();

    if (!isBiometricsAvailable) return false;

    try {
      return await auth.authenticate(
        localizedReason: 'Scan Fingerprint To Enter Vault',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } on PlatformException {
      return;
    }
  }
}

class LocalAuth extends StatefulWidget {
  const LocalAuth({Key? key}) : super(key: key);

  @override
  State<LocalAuth> createState() => _LocalAuthState();
}

class _LocalAuthState extends State<LocalAuth> {
  bool? _hasBiomatric;
  LocalAuthentication authentication = LocalAuthentication();
  Future<void> _checkBio() async {
    try {
      _hasBiomatric = await authentication.canCheckBiometrics;

      print(_hasBiomatric);
      if (_hasBiomatric!) {
        _getBio();
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _getBio() async {
    bool? isAuth = false;
    try {
      isAuth = await authentication.authenticate(
        localizedReason: "Scan your fingerprint to access the app",
        options: AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      if (isAuth) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (bulder) => LoginSignUpPage()));
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _checkBio();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
                color: Colors.transparent,
                child: Image.asset(
                  "images/logo_old.png",
                )),
            Center(
              child: Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_jmejybvu.json"),
            ),
            SizedBox(
              height: 80,
            ),
            CustomButton(
                text: "TryAgain",
                onTap: () {
                  _checkBio();
                })
          ],
        ),
      ),
    );
  }
}
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, avoid_print

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:local_auth/local_auth.dart';

// class LocalAuth extends StatefulWidget {
//   const LocalAuth({Key? key}) : super(key: key);

//   @override
//   State<LocalAuth> createState() => _LocalAuthState();
// }

// class _LocalAuthState extends State<LocalAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   _SupportState _supportState = _SupportState.unknown;
//   bool? _canCheckBiometrics;
//   List<BiometricType>? _availableBiometrics;
//   String _authorized = 'Not Authorized';
//   bool _isAuthenticating = false;

//   @override
//   void initState() {
//     super.initState();
//     auth.isDeviceSupported().then(
//           (bool isSupported) => setState(() => _supportState = isSupported
//               ? _SupportState.supported
//               : _SupportState.unsupported),
//         );
//   }

//   Future<void> _checkBiometrics() async {
//     late bool canCheckBiometrics;
//     try {
//       canCheckBiometrics = await auth.canCheckBiometrics;
//     } on PlatformException catch (e) {
//       canCheckBiometrics = false;
//       print(e);
//     }
//     if (!mounted) {
//       return;
//     }

//     setState(() {
//       _canCheckBiometrics = canCheckBiometrics;
//     });
//   }

//   Future<void> _getAvailableBiometrics() async {
//     late List<BiometricType> availableBiometrics;
//     try {
//       availableBiometrics = await auth.getAvailableBiometrics();
//     } on PlatformException catch (e) {
//       availableBiometrics = <BiometricType>[];
//       print(e);
//     }
//     if (!mounted) {
//       return;
//     }

//     setState(() {
//       _availableBiometrics = availableBiometrics;
//     });
//   }

//   Future<void> _authenticate() async {
//     bool authenticated = false;
//     try {
//       setState(() {
//         _isAuthenticating = true;
//         _authorized = 'Authenticating';
//       });
//       authenticated = await auth.authenticate(
//         localizedReason: 'Let OS determine authentication method',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//         ),
//       );
//       setState(() {
//         _isAuthenticating = false;
//       });
//     } on PlatformException catch (e) {
//       print(e);
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Error - ${e.message}';
//       });
//       return;
//     }
//     if (!mounted) {
//       return;
//     }

//     setState(
//         () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
//   }

//   Future<void> _authenticateWithBiometrics() async {
//     bool authenticated = false;
//     try {
//       setState(() {
//         _isAuthenticating = true;
//         _authorized = 'Authenticating';
//       });
//       authenticated = await auth.authenticate(
//         localizedReason:
//             'Scan your fingerprint (or face or whatever) to authenticate',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Authenticating';
//       });
//     } on PlatformException catch (e) {
//       print(e);
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Error - ${e.message}';
//       });
//       return;
//     }
//     if (!mounted) {
//       return;
//     }

//     final String message = authenticated ? 'Authorized' : 'Not Authorized';
//     setState(() {
//       _authorized = message;
//     });
//   }

//   Future<void> _cancelAuthentication() async {
//     await auth.stopAuthentication();
//     setState(() => _isAuthenticating = false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.only(top: 30),
//           children: <Widget>[
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 if (_supportState == _SupportState.unknown)
//                   const CircularProgressIndicator()
//                 else if (_supportState == _SupportState.supported)
//                   const Text('This device is supported')
//                 else
//                   const Text('This device is not supported'),
//                 const Divider(height: 100),
//                 Text('Can check biometrics: $_canCheckBiometrics\n'),
//                 ElevatedButton(
//                   onPressed: _checkBiometrics,
//                   child: const Text('Check biometrics'),
//                 ),
//                 const Divider(height: 100),
//                 Text('Available biometrics: $_availableBiometrics\n'),
//                 ElevatedButton(
//                   onPressed: _getAvailableBiometrics,
//                   child: const Text('Get available biometrics'),
//                 ),
//                 const Divider(height: 100),
//                 Text('Current State: $_authorized\n'),
//                 if (_isAuthenticating)
//                   ElevatedButton(
//                     onPressed: _cancelAuthentication,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: const <Widget>[
//                         Text('Cancel Authentication'),
//                         Icon(Icons.cancel),
//                       ],
//                     ),
//                   )
//                 else
//                   Column(
//                     children: <Widget>[
//                       ElevatedButton(
//                         onPressed: _authenticate,
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: const <Widget>[
//                             Text('Authenticate'),
//                             Icon(Icons.perm_device_information),
//                           ],
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: _authenticateWithBiometrics,
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Text(_isAuthenticating
//                                 ? 'Cancel'
//                                 : 'Authenticate: biometrics only'),
//                             const Icon(Icons.fingerprint),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// enum _SupportState {
//   unknown,
//   supported,
//   unsupported,
// }