// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cours_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoursModel _$CoursModelFromJson(Map<String, dynamic> json) {
  return _CoursModel.fromJson(json);
}

/// @nodoc
mixin _$CoursModel {
  String get contentImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get profilImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get btnText => throw _privateConstructorUsedError;
  String? get prise => throw _privateConstructorUsedError;

  /// Serializes this CoursModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoursModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursModelCopyWith<CoursModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursModelCopyWith<$Res> {
  factory $CoursModelCopyWith(
          CoursModel value, $Res Function(CoursModel) then) =
      _$CoursModelCopyWithImpl<$Res, CoursModel>;
  @useResult
  $Res call(
      {String contentImage,
      String title,
      String? profilImage,
      String name,
      String btnText,
      String? prise});
}

/// @nodoc
class _$CoursModelCopyWithImpl<$Res, $Val extends CoursModel>
    implements $CoursModelCopyWith<$Res> {
  _$CoursModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentImage = null,
    Object? title = null,
    Object? profilImage = freezed,
    Object? name = null,
    Object? btnText = null,
    Object? prise = freezed,
  }) {
    return _then(_value.copyWith(
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      btnText: null == btnText
          ? _value.btnText
          : btnText // ignore: cast_nullable_to_non_nullable
              as String,
      prise: freezed == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursModelImplCopyWith<$Res>
    implements $CoursModelCopyWith<$Res> {
  factory _$$CoursModelImplCopyWith(
          _$CoursModelImpl value, $Res Function(_$CoursModelImpl) then) =
      __$$CoursModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentImage,
      String title,
      String? profilImage,
      String name,
      String btnText,
      String? prise});
}

/// @nodoc
class __$$CoursModelImplCopyWithImpl<$Res>
    extends _$CoursModelCopyWithImpl<$Res, _$CoursModelImpl>
    implements _$$CoursModelImplCopyWith<$Res> {
  __$$CoursModelImplCopyWithImpl(
      _$CoursModelImpl _value, $Res Function(_$CoursModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentImage = null,
    Object? title = null,
    Object? profilImage = freezed,
    Object? name = null,
    Object? btnText = null,
    Object? prise = freezed,
  }) {
    return _then(_$CoursModelImpl(
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      btnText: null == btnText
          ? _value.btnText
          : btnText // ignore: cast_nullable_to_non_nullable
              as String,
      prise: freezed == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursModelImpl implements _CoursModel {
  _$CoursModelImpl(
      {required this.contentImage,
      required this.title,
      this.profilImage,
      required this.name,
      required this.btnText,
      this.prise});

  factory _$CoursModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursModelImplFromJson(json);

  @override
  final String contentImage;
  @override
  final String title;
  @override
  final String? profilImage;
  @override
  final String name;
  @override
  final String btnText;
  @override
  final String? prise;

  @override
  String toString() {
    return 'CoursModel(contentImage: $contentImage, title: $title, profilImage: $profilImage, name: $name, btnText: $btnText, prise: $prise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursModelImpl &&
            (identical(other.contentImage, contentImage) ||
                other.contentImage == contentImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.profilImage, profilImage) ||
                other.profilImage == profilImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.btnText, btnText) || other.btnText == btnText) &&
            (identical(other.prise, prise) || other.prise == prise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, contentImage, title, profilImage, name, btnText, prise);

  /// Create a copy of CoursModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursModelImplCopyWith<_$CoursModelImpl> get copyWith =>
      __$$CoursModelImplCopyWithImpl<_$CoursModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursModelImplToJson(
      this,
    );
  }
}

abstract class _CoursModel implements CoursModel {
  factory _CoursModel(
      {required final String contentImage,
      required final String title,
      final String? profilImage,
      required final String name,
      required final String btnText,
      final String? prise}) = _$CoursModelImpl;

  factory _CoursModel.fromJson(Map<String, dynamic> json) =
      _$CoursModelImpl.fromJson;

  @override
  String get contentImage;
  @override
  String get title;
  @override
  String? get profilImage;
  @override
  String get name;
  @override
  String get btnText;
  @override
  String? get prise;

  /// Create a copy of CoursModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursModelImplCopyWith<_$CoursModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
