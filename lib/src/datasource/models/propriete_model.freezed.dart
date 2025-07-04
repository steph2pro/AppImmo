// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'propriete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProprieteModel _$ProprieteModelFromJson(Map<String, dynamic> json) {
  return _ProprieteModel.fromJson(json);
}

/// @nodoc
mixin _$ProprieteModel {
  String get id => throw _privateConstructorUsedError;
  String get titre => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get prix => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get localisation => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String>? get imagesVues => throw _privateConstructorUsedError;
  int? get nbrChambre => throw _privateConstructorUsedError;
  int? get nbrSalleBain => throw _privateConstructorUsedError;
  int? get nbrCuisine => throw _privateConstructorUsedError;
  String get iduser => throw _privateConstructorUsedError;

  /// Serializes this ProprieteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProprieteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProprieteModelCopyWith<ProprieteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProprieteModelCopyWith<$Res> {
  factory $ProprieteModelCopyWith(
          ProprieteModel value, $Res Function(ProprieteModel) then) =
      _$ProprieteModelCopyWithImpl<$Res, ProprieteModel>;
  @useResult
  $Res call(
      {String id,
      String titre,
      String description,
      int prix,
      String type,
      String localisation,
      String image,
      List<String>? imagesVues,
      int? nbrChambre,
      int? nbrSalleBain,
      int? nbrCuisine,
      String iduser});
}

/// @nodoc
class _$ProprieteModelCopyWithImpl<$Res, $Val extends ProprieteModel>
    implements $ProprieteModelCopyWith<$Res> {
  _$ProprieteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProprieteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titre = null,
    Object? description = null,
    Object? prix = null,
    Object? type = null,
    Object? localisation = null,
    Object? image = null,
    Object? imagesVues = freezed,
    Object? nbrChambre = freezed,
    Object? nbrSalleBain = freezed,
    Object? nbrCuisine = freezed,
    Object? iduser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titre: null == titre
          ? _value.titre
          : titre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prix: null == prix
          ? _value.prix
          : prix // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      localisation: null == localisation
          ? _value.localisation
          : localisation // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imagesVues: freezed == imagesVues
          ? _value.imagesVues
          : imagesVues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nbrChambre: freezed == nbrChambre
          ? _value.nbrChambre
          : nbrChambre // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSalleBain: freezed == nbrSalleBain
          ? _value.nbrSalleBain
          : nbrSalleBain // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrCuisine: freezed == nbrCuisine
          ? _value.nbrCuisine
          : nbrCuisine // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: null == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProprieteModelImplCopyWith<$Res>
    implements $ProprieteModelCopyWith<$Res> {
  factory _$$ProprieteModelImplCopyWith(_$ProprieteModelImpl value,
          $Res Function(_$ProprieteModelImpl) then) =
      __$$ProprieteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String titre,
      String description,
      int prix,
      String type,
      String localisation,
      String image,
      List<String>? imagesVues,
      int? nbrChambre,
      int? nbrSalleBain,
      int? nbrCuisine,
      String iduser});
}

/// @nodoc
class __$$ProprieteModelImplCopyWithImpl<$Res>
    extends _$ProprieteModelCopyWithImpl<$Res, _$ProprieteModelImpl>
    implements _$$ProprieteModelImplCopyWith<$Res> {
  __$$ProprieteModelImplCopyWithImpl(
      _$ProprieteModelImpl _value, $Res Function(_$ProprieteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProprieteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titre = null,
    Object? description = null,
    Object? prix = null,
    Object? type = null,
    Object? localisation = null,
    Object? image = null,
    Object? imagesVues = freezed,
    Object? nbrChambre = freezed,
    Object? nbrSalleBain = freezed,
    Object? nbrCuisine = freezed,
    Object? iduser = null,
  }) {
    return _then(_$ProprieteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titre: null == titre
          ? _value.titre
          : titre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prix: null == prix
          ? _value.prix
          : prix // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      localisation: null == localisation
          ? _value.localisation
          : localisation // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imagesVues: freezed == imagesVues
          ? _value._imagesVues
          : imagesVues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nbrChambre: freezed == nbrChambre
          ? _value.nbrChambre
          : nbrChambre // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSalleBain: freezed == nbrSalleBain
          ? _value.nbrSalleBain
          : nbrSalleBain // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrCuisine: freezed == nbrCuisine
          ? _value.nbrCuisine
          : nbrCuisine // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: null == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProprieteModelImpl implements _ProprieteModel {
  _$ProprieteModelImpl(
      {required this.id,
      required this.titre,
      required this.description,
      required this.prix,
      required this.type,
      required this.localisation,
      required this.image,
      final List<String>? imagesVues,
      this.nbrChambre,
      this.nbrSalleBain,
      this.nbrCuisine,
      required this.iduser})
      : _imagesVues = imagesVues;

  factory _$ProprieteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProprieteModelImplFromJson(json);

  @override
  final String id;
  @override
  final String titre;
  @override
  final String description;
  @override
  final int prix;
  @override
  final String type;
  @override
  final String localisation;
  @override
  final String image;
  final List<String>? _imagesVues;
  @override
  List<String>? get imagesVues {
    final value = _imagesVues;
    if (value == null) return null;
    if (_imagesVues is EqualUnmodifiableListView) return _imagesVues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? nbrChambre;
  @override
  final int? nbrSalleBain;
  @override
  final int? nbrCuisine;
  @override
  final String iduser;

  @override
  String toString() {
    return 'ProprieteModel(id: $id, titre: $titre, description: $description, prix: $prix, type: $type, localisation: $localisation, image: $image, imagesVues: $imagesVues, nbrChambre: $nbrChambre, nbrSalleBain: $nbrSalleBain, nbrCuisine: $nbrCuisine, iduser: $iduser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProprieteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titre, titre) || other.titre == titre) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.prix, prix) || other.prix == prix) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.localisation, localisation) ||
                other.localisation == localisation) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._imagesVues, _imagesVues) &&
            (identical(other.nbrChambre, nbrChambre) ||
                other.nbrChambre == nbrChambre) &&
            (identical(other.nbrSalleBain, nbrSalleBain) ||
                other.nbrSalleBain == nbrSalleBain) &&
            (identical(other.nbrCuisine, nbrCuisine) ||
                other.nbrCuisine == nbrCuisine) &&
            (identical(other.iduser, iduser) || other.iduser == iduser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      titre,
      description,
      prix,
      type,
      localisation,
      image,
      const DeepCollectionEquality().hash(_imagesVues),
      nbrChambre,
      nbrSalleBain,
      nbrCuisine,
      iduser);

  /// Create a copy of ProprieteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProprieteModelImplCopyWith<_$ProprieteModelImpl> get copyWith =>
      __$$ProprieteModelImplCopyWithImpl<_$ProprieteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProprieteModelImplToJson(
      this,
    );
  }
}

abstract class _ProprieteModel implements ProprieteModel {
  factory _ProprieteModel(
      {required final String id,
      required final String titre,
      required final String description,
      required final int prix,
      required final String type,
      required final String localisation,
      required final String image,
      final List<String>? imagesVues,
      final int? nbrChambre,
      final int? nbrSalleBain,
      final int? nbrCuisine,
      required final String iduser}) = _$ProprieteModelImpl;

  factory _ProprieteModel.fromJson(Map<String, dynamic> json) =
      _$ProprieteModelImpl.fromJson;

  @override
  String get id;
  @override
  String get titre;
  @override
  String get description;
  @override
  int get prix;
  @override
  String get type;
  @override
  String get localisation;
  @override
  String get image;
  @override
  List<String>? get imagesVues;
  @override
  int? get nbrChambre;
  @override
  int? get nbrSalleBain;
  @override
  int? get nbrCuisine;
  @override
  String get iduser;

  /// Create a copy of ProprieteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProprieteModelImplCopyWith<_$ProprieteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
