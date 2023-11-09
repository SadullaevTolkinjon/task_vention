// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<Character>? get characters => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBuildableStateCopyWith<HomeBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableStateCopyWith<$Res> {
  factory $HomeBuildableStateCopyWith(
          HomeBuildableState value, $Res Function(HomeBuildableState) then) =
      _$HomeBuildableStateCopyWithImpl<$Res, HomeBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      List<Character>? characters,
      int? nextPageKey});
}

/// @nodoc
class _$HomeBuildableStateCopyWithImpl<$Res, $Val extends HomeBuildableState>
    implements $HomeBuildableStateCopyWith<$Res> {
  _$HomeBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? characters = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBuildableStateImplCopyWith<$Res>
    implements $HomeBuildableStateCopyWith<$Res> {
  factory _$$HomeBuildableStateImplCopyWith(_$HomeBuildableStateImpl value,
          $Res Function(_$HomeBuildableStateImpl) then) =
      __$$HomeBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      List<Character>? characters,
      int? nextPageKey});
}

/// @nodoc
class __$$HomeBuildableStateImplCopyWithImpl<$Res>
    extends _$HomeBuildableStateCopyWithImpl<$Res, _$HomeBuildableStateImpl>
    implements _$$HomeBuildableStateImplCopyWith<$Res> {
  __$$HomeBuildableStateImplCopyWithImpl(_$HomeBuildableStateImpl _value,
      $Res Function(_$HomeBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? characters = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$HomeBuildableStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeBuildableStateImpl implements _HomeBuildableState {
  const _$HomeBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      final List<Character>? characters,
      this.nextPageKey})
      : _characters = characters;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;
  final List<Character>? _characters;
  @override
  List<Character>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'HomeBuildableState(loading: $loading, success: $success, failed: $failed, error: $error, characters: $characters, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failed,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_characters),
      nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildableStateImplCopyWith<_$HomeBuildableStateImpl> get copyWith =>
      __$$HomeBuildableStateImplCopyWithImpl<_$HomeBuildableStateImpl>(
          this, _$identity);
}

abstract class _HomeBuildableState implements HomeBuildableState {
  const factory _HomeBuildableState(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final List<Character>? characters,
      final int? nextPageKey}) = _$HomeBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  List<Character>? get characters;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$HomeBuildableStateImplCopyWith<_$HomeBuildableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
