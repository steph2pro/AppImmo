// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRequestModel _$UserRequestModelFromJson(Map<String, dynamic> json) {
  return _UserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserRequestModel {
  String get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;
  String? get profil => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this UserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRequestModelCopyWith<UserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestModelCopyWith<$Res> {
  factory $UserRequestModelCopyWith(
          UserRequestModel value, $Res Function(UserRequestModel) then) =
      _$UserRequestModelCopyWithImpl<$Res, UserRequestModel>;
  @useResult
  $Res call(
      {String id,
      String nom,
      String email,
      String password,
      String? contact,
      String? profil,
      String? role});
}

/// @nodoc
class _$UserRequestModelCopyWithImpl<$Res, $Val extends UserRequestModel>
    implements $UserRequestModelCopyWith<$Res> {
  _$UserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nom = null,
    Object? email = null,
    Object? password = null,
    Object? contact = freezed,
    Object? profil = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      profil: freezed == profil
          ? _value.profil
          : profil // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRequestModelImplCopyWith<$Res>
    implements $UserRequestModelCopyWith<$Res> {
  factory _$$UserRequestModelImplCopyWith(_$UserRequestModelImpl value,
          $Res Function(_$UserRequestModelImpl) then) =
      __$$UserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nom,
      String email,
      String password,
      String? contact,
      String? profil,
      String? role});
}

/// @nodoc
class __$$UserRequestModelImplCopyWithImpl<$Res>
    extends _$UserRequestModelCopyWithImpl<$Res, _$UserRequestModelImpl>
    implements _$$UserRequestModelImplCopyWith<$Res> {
  __$$UserRequestModelImplCopyWithImpl(_$UserRequestModelImpl _value,
      $Res Function(_$UserRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nom = null,
    Object? email = null,
    Object? password = null,
    Object? contact = freezed,
    Object? profil = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UserRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      profil: freezed == profil
          ? _value.profil
          : profil // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequestModelImpl implements _UserRequestModel {
  _$UserRequestModelImpl(
      {required this.id,
      required this.nom,
      required this.email,
      required this.password,
      this.contact,
      this.profil,
      this.role});

  factory _$UserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestModelImplFromJson(json);

  @override
  final String id;
  @override
  final String nom;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? contact;
  @override
  final String? profil;
  @override
  final String? role;

  @override
  String toString() {
    return 'UserRequestModel(id: $id, nom: $nom, email: $email, password: $password, contact: $contact, profil: $profil, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.profil, profil) || other.profil == profil) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nom, email, password, contact, profil, role);

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestModelImplCopyWith<_$UserRequestModelImpl> get copyWith =>
      __$$UserRequestModelImplCopyWithImpl<_$UserRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UserRequestModel implements UserRequestModel {
  factory _UserRequestModel(
      {required final String id,
      required final String nom,
      required final String email,
      required final String password,
      final String? contact,
      final String? profil,
      final String? role}) = _$UserRequestModelImpl;

  factory _UserRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserRequestModelImpl.fromJson;

  @override
  String get id;
  @override
  String get nom;
  @override
  String get email;
  @override
  String get password;
  @override
  String? get contact;
  @override
  String? get profil;
  @override
  String? get role;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRequestModelImplCopyWith<_$UserRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
