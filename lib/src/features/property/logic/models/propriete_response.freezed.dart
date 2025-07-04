// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'propriete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProprieteResponse _$ProprieteResponseFromJson(Map<String, dynamic> json) {
  return _ProprieteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProprieteResponse {
  ProprieteModel get propriete => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this ProprieteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProprieteResponseCopyWith<ProprieteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProprieteResponseCopyWith<$Res> {
  factory $ProprieteResponseCopyWith(
          ProprieteResponse value, $Res Function(ProprieteResponse) then) =
      _$ProprieteResponseCopyWithImpl<$Res, ProprieteResponse>;
  @useResult
  $Res call({ProprieteModel propriete, UserModel user});

  $ProprieteModelCopyWith<$Res> get propriete;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ProprieteResponseCopyWithImpl<$Res, $Val extends ProprieteResponse>
    implements $ProprieteResponseCopyWith<$Res> {
  _$ProprieteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propriete = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      propriete: null == propriete
          ? _value.propriete
          : propriete // ignore: cast_nullable_to_non_nullable
              as ProprieteModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProprieteModelCopyWith<$Res> get propriete {
    return $ProprieteModelCopyWith<$Res>(_value.propriete, (value) {
      return _then(_value.copyWith(propriete: value) as $Val);
    });
  }

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProprieteResponseImplCopyWith<$Res>
    implements $ProprieteResponseCopyWith<$Res> {
  factory _$$ProprieteResponseImplCopyWith(_$ProprieteResponseImpl value,
          $Res Function(_$ProprieteResponseImpl) then) =
      __$$ProprieteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProprieteModel propriete, UserModel user});

  @override
  $ProprieteModelCopyWith<$Res> get propriete;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProprieteResponseImplCopyWithImpl<$Res>
    extends _$ProprieteResponseCopyWithImpl<$Res, _$ProprieteResponseImpl>
    implements _$$ProprieteResponseImplCopyWith<$Res> {
  __$$ProprieteResponseImplCopyWithImpl(_$ProprieteResponseImpl _value,
      $Res Function(_$ProprieteResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propriete = null,
    Object? user = null,
  }) {
    return _then(_$ProprieteResponseImpl(
      propriete: null == propriete
          ? _value.propriete
          : propriete // ignore: cast_nullable_to_non_nullable
              as ProprieteModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProprieteResponseImpl implements _ProprieteResponse {
  _$ProprieteResponseImpl({required this.propriete, required this.user});

  factory _$ProprieteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProprieteResponseImplFromJson(json);

  @override
  final ProprieteModel propriete;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProprieteResponse(propriete: $propriete, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProprieteResponseImpl &&
            (identical(other.propriete, propriete) ||
                other.propriete == propriete) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, propriete, user);

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProprieteResponseImplCopyWith<_$ProprieteResponseImpl> get copyWith =>
      __$$ProprieteResponseImplCopyWithImpl<_$ProprieteResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProprieteResponseImplToJson(
      this,
    );
  }
}

abstract class _ProprieteResponse implements ProprieteResponse {
  factory _ProprieteResponse(
      {required final ProprieteModel propriete,
      required final UserModel user}) = _$ProprieteResponseImpl;

  factory _ProprieteResponse.fromJson(Map<String, dynamic> json) =
      _$ProprieteResponseImpl.fromJson;

  @override
  ProprieteModel get propriete;
  @override
  UserModel get user;

  /// Create a copy of ProprieteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProprieteResponseImplCopyWith<_$ProprieteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
