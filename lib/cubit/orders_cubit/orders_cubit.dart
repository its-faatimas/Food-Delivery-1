import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());
}
