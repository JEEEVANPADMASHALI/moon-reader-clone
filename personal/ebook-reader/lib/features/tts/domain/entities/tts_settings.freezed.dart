// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tts_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TtsSettings _$TtsSettingsFromJson(Map<String, dynamic> json) {
  return _TtsSettings.fromJson(json);
}

/// @nodoc
mixin _$TtsSettings {
  double get speed => throw _privateConstructorUsedError;
  double get pitch => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get shakeToToggle => throw _privateConstructorUsedError;
  bool get highlightCurrentSentence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TtsSettingsCopyWith<TtsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TtsSettingsCopyWith<$Res> {
  factory $TtsSettingsCopyWith(
          TtsSettings value, $Res Function(TtsSettings) then) =
      _$TtsSettingsCopyWithImpl<$Res, TtsSettings>;
  @useResult
  $Res call(
      {double speed,
      double pitch,
      double volume,
      String language,
      bool shakeToToggle,
      bool highlightCurrentSentence});
}

/// @nodoc
class _$TtsSettingsCopyWithImpl<$Res, $Val extends TtsSettings>
    implements $TtsSettingsCopyWith<$Res> {
  _$TtsSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? pitch = null,
    Object? volume = null,
    Object? language = null,
    Object? shakeToToggle = null,
    Object? highlightCurrentSentence = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      shakeToToggle: null == shakeToToggle
          ? _value.shakeToToggle
          : shakeToToggle // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightCurrentSentence: null == highlightCurrentSentence
          ? _value.highlightCurrentSentence
          : highlightCurrentSentence // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TtsSettingsImplCopyWith<$Res>
    implements $TtsSettingsCopyWith<$Res> {
  factory _$$TtsSettingsImplCopyWith(
          _$TtsSettingsImpl value, $Res Function(_$TtsSettingsImpl) then) =
      __$$TtsSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double speed,
      double pitch,
      double volume,
      String language,
      bool shakeToToggle,
      bool highlightCurrentSentence});
}

/// @nodoc
class __$$TtsSettingsImplCopyWithImpl<$Res>
    extends _$TtsSettingsCopyWithImpl<$Res, _$TtsSettingsImpl>
    implements _$$TtsSettingsImplCopyWith<$Res> {
  __$$TtsSettingsImplCopyWithImpl(
      _$TtsSettingsImpl _value, $Res Function(_$TtsSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? pitch = null,
    Object? volume = null,
    Object? language = null,
    Object? shakeToToggle = null,
    Object? highlightCurrentSentence = null,
  }) {
    return _then(_$TtsSettingsImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      shakeToToggle: null == shakeToToggle
          ? _value.shakeToToggle
          : shakeToToggle // ignore: cast_nullable_to_non_nullable
              as bool,
      highlightCurrentSentence: null == highlightCurrentSentence
          ? _value.highlightCurrentSentence
          : highlightCurrentSentence // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TtsSettingsImpl implements _TtsSettings {
  const _$TtsSettingsImpl(
      {this.speed = 1.0,
      this.pitch = 1.0,
      this.volume = 1.0,
      this.language = 'en-US',
      this.shakeToToggle = true,
      this.highlightCurrentSentence = true});

  factory _$TtsSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TtsSettingsImplFromJson(json);

  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final double pitch;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final bool shakeToToggle;
  @override
  @JsonKey()
  final bool highlightCurrentSentence;

  @override
  String toString() {
    return 'TtsSettings(speed: $speed, pitch: $pitch, volume: $volume, language: $language, shakeToToggle: $shakeToToggle, highlightCurrentSentence: $highlightCurrentSentence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TtsSettingsImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.shakeToToggle, shakeToToggle) ||
                other.shakeToToggle == shakeToToggle) &&
            (identical(
                    other.highlightCurrentSentence, highlightCurrentSentence) ||
                other.highlightCurrentSentence == highlightCurrentSentence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, pitch, volume, language,
      shakeToToggle, highlightCurrentSentence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TtsSettingsImplCopyWith<_$TtsSettingsImpl> get copyWith =>
      __$$TtsSettingsImplCopyWithImpl<_$TtsSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TtsSettingsImplToJson(
      this,
    );
  }
}

abstract class _TtsSettings implements TtsSettings {
  const factory _TtsSettings(
      {final double speed,
      final double pitch,
      final double volume,
      final String language,
      final bool shakeToToggle,
      final bool highlightCurrentSentence}) = _$TtsSettingsImpl;

  factory _TtsSettings.fromJson(Map<String, dynamic> json) =
      _$TtsSettingsImpl.fromJson;

  @override
  double get speed;
  @override
  double get pitch;
  @override
  double get volume;
  @override
  String get language;
  @override
  bool get shakeToToggle;
  @override
  bool get highlightCurrentSentence;
  @override
  @JsonKey(ignore: true)
  _$$TtsSettingsImplCopyWith<_$TtsSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
