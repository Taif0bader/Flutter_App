//import 'package:equatable/equatable.dart';
//part of 'cart_bloc.dart';



import 'package:equatable/equatable.dart';

import '../../models/cart_model.dart';

//@immutable
abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final Cart cart;

  const CartLoaded({this.cart = const Cart()});

  @override
  List<Object> get props => [cart];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}