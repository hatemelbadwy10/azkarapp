part of 'fav_cubit.dart';

@immutable
abstract class FavState {
}

class FavInitial extends FavState {}
class GetAllFavListSuccess extends FavState{}
class FavAdd extends FavState{}
class FavRemove extends FavState{}

