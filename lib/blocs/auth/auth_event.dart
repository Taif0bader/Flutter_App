//import '../../models/user_model.dart';
 part of 'auth_bloc.dart';
//
 abstract class AuthEvent extends Equatable {
  const AuthEvent();
//
   @override
  List<Object?> get props => [];
}
//
 class AuthUserChanged extends AuthEvent {
   final auth.User? authUser;
   final UserInfo? user;

   const AuthUserChanged({
     required this.authUser,
     this.user,
   });

   @override
   List<Object?> get props => [authUser, user];
 }