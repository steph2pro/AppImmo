// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfrastructureModel _$InfrastructureModelFromJson(Map<String, dynamic> json) {
  return _InfrastructureModel.fromJson(json);
}

/// @nodoc
mixin _$InfrastructureModel {
  String get title => throw _privateConstructorUsedError;
  String get star => throw _privateConstructorUsedError;
  String get contentImage => throw _privateConstructorUsedError;
  String? get profilImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get prise => throw _privateConstructorUsedError;
  String get btnText => throw _privateConstructorUsedError;

  /// Serializes this InfrastructureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfrastructureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfrastructureModelCopyWith<InfrastructureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfrastructureModelCopyWith<$Res> {
  factory $InfrastructureModelCopyWith(
          InfrastructureModel value, $Res Function(InfrastructureModel) then) =
      _$InfrastructureModelCopyWithImpl<$Res, InfrastructureModel>;
  @useResult
  $Res call(
      {String title,
      String star,
      String contentImage,
      String? profilImage,
      String name,
      String prise,
      String btnText});
}

/// @nodoc
class _$InfrastructureModelCopyWithImpl<$Res, $Val extends InfrastructureModel>
    implements $InfrastructureModelCopyWith<$Res> {
  _$InfrastructureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfrastructureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? star = null,
    Object? contentImage = null,
    Object? profilImage = freezed,
    Object? name = null,
    Object? prise = null,
    Object? btnText = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String,
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prise: null == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as String,
      btnText: null == btnText
          ? _value.btnText
          : btnText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfrastructureModelImplCopyWith<$Res>
    implements $InfrastructureModelCopyWith<$Res> {
  factory _$$InfrastructureModelImplCopyWith(_$InfrastructureModelImpl value,
          $Res Function(_$InfrastructureModelImpl) then) =
      __$$InfrastructureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String star,
      String contentImage,
      String? profilImage,
      String name,
      String prise,
      String btnText});
}

/// @nodoc
class __$$InfrastructureModelImplCopyWithImpl<$Res>
    extends _$InfrastructureModelCopyWithImpl<$Res, _$InfrastructureModelImpl>
    implements _$$InfrastructureModelImplCopyWith<$Res> {
  __$$InfrastructureModelImplCopyWithImpl(_$InfrastructureModelImpl _value,
      $Res Function(_$InfrastructureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfrastructureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? star = null,
    Object? contentImage = null,
    Object? profilImage = freezed,
    Object? name = null,
    Object? prise = null,
    Object? btnText = null,
  }) {
    return _then(_$InfrastructureModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String,
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prise: null == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as String,
      btnText: null == btnText
          ? _value.btnText
          : btnText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfrastructureModelImpl implements _InfrastructureModel {
  _$InfrastructureModelImpl(
      {required this.title,
      required this.star,
      required this.contentImage,
      this.profilImage,
      required this.name,
      required this.prise,
      required this.btnText});

  factory _$InfrastructureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfrastructureModelImplFromJson(json);

  @override
  final String title;
  @override
  final String star;
  @override
  final String contentImage;
  @override
  final String? profilImage;
  @override
  final String name;
  @override
  final String prise;
  @override
  final String btnText;

  @override
  String toString() {
    return 'InfrastructureModel(title: $title, star: $star, contentImage: $contentImage, profilImage: $profilImage, name: $name, prise: $prise, btnText: $btnText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfrastructureModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.contentImage, contentImage) ||
                other.contentImage == contentImage) &&
            (identical(other.profilImage, profilImage) ||
                other.profilImage == profilImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prise, prise) || other.prise == prise) &&
            (identical(other.btnText, btnText) || other.btnText == btnText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, star, contentImage,
      profilImage, name, prise, btnText);

  /// Create a copy of InfrastructureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfrastructureModelImplCopyWith<_$InfrastructureModelImpl> get copyWith =>
      __$$InfrastructureModelImplCopyWithImpl<_$InfrastructureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfrastructureModelImplToJson(
      this,
    );
  }
}

abstract class _InfrastructureModel implements InfrastructureModel {
  factory _InfrastructureModel(
      {required final String title,
      required final String star,
      required final String contentImage,
      final String? profilImage,
      required final String name,
      required final String prise,
      required final String btnText}) = _$InfrastructureModelImpl;

  factory _InfrastructureModel.fromJson(Map<String, dynamic> json) =
      _$InfrastructureModelImpl.fromJson;

  @override
  String get title;
  @override
  String get star;
  @override
  String get contentImage;
  @override
  String? get profilImage;
  @override
  String get name;
  @override
  String get prise;
  @override
  String get btnText;

  /// Create a copy of InfrastructureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureModelImplCopyWith<_$InfrastructureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
