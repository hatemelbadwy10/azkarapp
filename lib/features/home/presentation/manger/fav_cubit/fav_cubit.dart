import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../../../../constants.dart';
import '../../../data/models/elzekr_model/all_azkar_model.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavInitial());
  List<AllAzkarModel> allAzkar = [];

  void fetchAllNotes() async {
    var box = await Hive.openBox<List<AllAzkarModel>>(kFavAzkar);

    allAzkar = box.get('favAzkarListKey') ?? [];

    emit(GetAllFavListSuccess());
  }

  void addZekr(AllAzkarModel allAzkarModel) async {
    var box = await Hive.openBox<List<AllAzkarModel>>(kFavAzkar);
    List<AllAzkarModel> list = box.get('favAzkarListKey') ?? [];
    list.add(allAzkarModel);
    await box.put('favAzkarListKey', list);
    emit(FavAdd());
  }

  void removeZekr(AllAzkarModel allAzkarModel) async {
    var box = Hive.box<List<AllAzkarModel>>(kFavAzkar);

    // Get the existing list
    List<AllAzkarModel> list = box.get('favAzkarListKey', defaultValue: [])!;

    // Remove the item from the list
    list.remove(allAzkarModel);

    // Store the updated list back into the box
    await box.put('favAzkarListKey', list);

    emit(FavRemove());
  }
}
