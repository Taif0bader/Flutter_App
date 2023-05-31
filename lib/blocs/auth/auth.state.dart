
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/user_model.dart';
//part of 'auth_bloc.dart';



 enum AuthStatus { unknown, authenticated, unauthenticated }

 class AuthState extends Equatable {
   final AuthStatus status;
   final auth.User? authUser;
  final UserInfo? user;

   const AuthState._({
     this.status = AuthStatus.unknown,
     this.authUser,
     this.user,
   });

  const AuthState.unknown() : this._();

  const AuthState.authenticated({
     required auth.User authUser,
     required UserInfo user,
  }) : this._(
     status: AuthStatus.authenticated,
     authUser: authUser,
     user: user,
   );

   const AuthState.unauthenticated()
      : this._(
     status: AuthStatus.unauthenticated,
  );

   @override
   List<Object?> get props => [status, authUser, user];
 }