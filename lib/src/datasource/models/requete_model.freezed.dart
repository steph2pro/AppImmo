// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequeteModel _$RequeteModelFromJson(Map<String, dynamic> json) {
  return _RequeteModel.fromJson(json);
}

/// @nodoc
mixin _$RequeteModel {
  String get id => throw _privateConstructorUsedError;
  String get contenue => throw _privateConstructorUsedError;
  String get objet => throw _privateConstructorUsedError;
  String get idUser => throw _privateConstructorUsedError;

  /// Serializes this RequeteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequeteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequeteModelCopyWith<RequeteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequeteModelCopyWith<$Res> {
  factory $RequeteModelCopyWith(
          RequeteModel value, $Res Function(RequeteModel) then) =
      _$RequeteModelCopyWithImpl<$Res, RequeteModel>;
  @useResult
  $Res call({String id, String contenue, String objet, String idUser});
}

/// @nodoc
class _$RequeteModelCopyWithImpl<$Res, $Val extends RequeteModel>
    implements $RequeteModelCopyWith<$Res> {
  _$RequeteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequeteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contenue = null,
    Object? objet = null,
    Object? idUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contenue: null == contenue
          ? _value.contenue
          : contenue // ignore: cast_nullable_to_non_nullable
              as String,
      objet: null == objet
          ? _value.objet
          : objet // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequeteModelImplCopyWith<$Res>
    implements $RequeteModelCopyWith<$Res> {
  factory _$$RequeteModelImplCopyWith(
          _$RequeteModelImpl value, $Res Function(_$RequeteModelImpl) then) =
      __$$RequeteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String contenue, String objet, String idUser});
}

/// @nodoc
class __$$RequeteModelImplCopyWithImpl<$Res>
    extends _$RequeteModelCopyWithImpl<$Res, _$RequeteModelImpl>
    implements _$$RequeteModelImplCopyWith<$Res> {
  __$$RequeteModelImplCopyWithImpl(
      _$RequeteModelImpl _value, $Res Function(_$RequeteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequeteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contenue = null,
    Object? objet = null,
    Object? idUser = null,
  }) {
    return _then(_$RequeteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contenue: null == contenue
          ? _value.contenue
          : contenue // ignore: cast_nullable_to_non_nullable
              as String,
      objet: null == objet
          ? _value.objet
          : objet // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequeteModelImpl implements _RequeteModel {
  _$RequeteModelImpl(
      {required this.id,
      required this.contenue,
      required this.objet,
      required this.idUser});

  factory _$RequeteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequeteModelImplFromJson(json);

  @override
  final String id;
  @override
  final String contenue;
  @override
  final String objet;
  @override
  final String idUser;

  @override
  String toString() {
    return 'RequeteModel(id: $id, contenue: $contenue, objet: $objet, idUser: $idUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequeteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contenue, contenue) ||
                other.contenue == contenue) &&
            (identical(other.objet, objet) || other.objet == objet) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, contenue, objet, idUser);

  /// Create a copy of RequeteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequeteModelImplCopyWith<_$RequeteModelImpl> get copyWith =>
      __$$RequeteModelImplCopyWithImpl<_$RequeteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequeteModelImplToJson(
      this,
    );
  }
}

abstract class _RequeteModel implements RequeteModel {
  factory _RequeteModel(
      {required final String id,
      required final String contenue,
      required final String objet,
      required final String idUser}) = _$RequeteModelImpl;

  factory _RequeteModel.fromJson(Map<String, dynamic> json) =
      _$RequeteModelImpl.fromJson;

  @override
  String get id;
  @override
  String get contenue;
  @override
  String get objet;
  @override
  String get idUser;

  /// Create a copy of RequeteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequeteModelImplCopyWith<_$RequeteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
