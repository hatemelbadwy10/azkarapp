part of 'all_azkar_cubit.dart';

abstract class AllAzkarState extends Equatable {
  const AllAzkarState();

  @override
  List<Object> get props => [];
}

class AllAzkarInitial extends AllAzkarState{}
class AllAzkarSuccess extends AllAzkarState{
final List<AzkarModel> azkarModel;

  const AllAzkarSuccess( this.azkarModel);
}
class AllAzkarLoading extends AllAzkarState{}
class AllAzkarFailure extends AllAzkarState{
  final String errMassage;

  AllAzkarFailure({required this.errMassage});
}