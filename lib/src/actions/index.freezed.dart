// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetArticles {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Article> articles) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Article> articles)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Article> articles)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesStart value) start,
    required TResult Function(GetArticlesSuccessful value) successful,
    required TResult Function(GetArticlesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesStart value)? start,
    TResult? Function(GetArticlesSuccessful value)? successful,
    TResult? Function(GetArticlesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesStart value)? start,
    TResult Function(GetArticlesSuccessful value)? successful,
    TResult Function(GetArticlesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArticlesCopyWith<$Res> {
  factory $GetArticlesCopyWith(
          GetArticles value, $Res Function(GetArticles) then) =
      _$GetArticlesCopyWithImpl<$Res, GetArticles>;
}

/// @nodoc
class _$GetArticlesCopyWithImpl<$Res, $Val extends GetArticles>
    implements $GetArticlesCopyWith<$Res> {
  _$GetArticlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArticlesStartCopyWith<$Res> {
  factory _$$GetArticlesStartCopyWith(
          _$GetArticlesStart value, $Res Function(_$GetArticlesStart) then) =
      __$$GetArticlesStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArticlesStartCopyWithImpl<$Res>
    extends _$GetArticlesCopyWithImpl<$Res, _$GetArticlesStart>
    implements _$$GetArticlesStartCopyWith<$Res> {
  __$$GetArticlesStartCopyWithImpl(
      _$GetArticlesStart _value, $Res Function(_$GetArticlesStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArticlesStart implements GetArticlesStart {
  const _$GetArticlesStart();

  @override
  String toString() {
    return 'GetArticles.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArticlesStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Article> articles) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Article> articles)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Article> articles)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesStart value) start,
    required TResult Function(GetArticlesSuccessful value) successful,
    required TResult Function(GetArticlesError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesStart value)? start,
    TResult? Function(GetArticlesSuccessful value)? successful,
    TResult? Function(GetArticlesError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesStart value)? start,
    TResult Function(GetArticlesSuccessful value)? successful,
    TResult Function(GetArticlesError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetArticlesStart implements GetArticles {
  const factory GetArticlesStart() = _$GetArticlesStart;
}

/// @nodoc
abstract class _$$GetArticlesSuccessfulCopyWith<$Res> {
  factory _$$GetArticlesSuccessfulCopyWith(_$GetArticlesSuccessful value,
          $Res Function(_$GetArticlesSuccessful) then) =
      __$$GetArticlesSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$GetArticlesSuccessfulCopyWithImpl<$Res>
    extends _$GetArticlesCopyWithImpl<$Res, _$GetArticlesSuccessful>
    implements _$$GetArticlesSuccessfulCopyWith<$Res> {
  __$$GetArticlesSuccessfulCopyWithImpl(_$GetArticlesSuccessful _value,
      $Res Function(_$GetArticlesSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$GetArticlesSuccessful(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$GetArticlesSuccessful implements GetArticlesSuccessful {
  const _$GetArticlesSuccessful(final List<Article> articles)
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'GetArticles.successful(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesSuccessful &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesSuccessfulCopyWith<_$GetArticlesSuccessful> get copyWith =>
      __$$GetArticlesSuccessfulCopyWithImpl<_$GetArticlesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Article> articles) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Article> articles)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Article> articles)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesStart value) start,
    required TResult Function(GetArticlesSuccessful value) successful,
    required TResult Function(GetArticlesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesStart value)? start,
    TResult? Function(GetArticlesSuccessful value)? successful,
    TResult? Function(GetArticlesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesStart value)? start,
    TResult Function(GetArticlesSuccessful value)? successful,
    TResult Function(GetArticlesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetArticlesSuccessful implements GetArticles {
  const factory GetArticlesSuccessful(final List<Article> articles) =
      _$GetArticlesSuccessful;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$GetArticlesSuccessfulCopyWith<_$GetArticlesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArticlesErrorCopyWith<$Res> {
  factory _$$GetArticlesErrorCopyWith(
          _$GetArticlesError value, $Res Function(_$GetArticlesError) then) =
      __$$GetArticlesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetArticlesErrorCopyWithImpl<$Res>
    extends _$GetArticlesCopyWithImpl<$Res, _$GetArticlesError>
    implements _$$GetArticlesErrorCopyWith<$Res> {
  __$$GetArticlesErrorCopyWithImpl(
      _$GetArticlesError _value, $Res Function(_$GetArticlesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetArticlesError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetArticlesError implements GetArticlesError {
  const _$GetArticlesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetArticles.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesErrorCopyWith<_$GetArticlesError> get copyWith =>
      __$$GetArticlesErrorCopyWithImpl<_$GetArticlesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Article> articles) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Article> articles)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Article> articles)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesStart value) start,
    required TResult Function(GetArticlesSuccessful value) successful,
    required TResult Function(GetArticlesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesStart value)? start,
    TResult? Function(GetArticlesSuccessful value)? successful,
    TResult? Function(GetArticlesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesStart value)? start,
    TResult Function(GetArticlesSuccessful value)? successful,
    TResult Function(GetArticlesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetArticlesError implements GetArticles {
  const factory GetArticlesError(
      final Object error, final StackTrace stackTrace) = _$GetArticlesError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetArticlesErrorCopyWith<_$GetArticlesError> get copyWith =>
      throw _privateConstructorUsedError;
}
