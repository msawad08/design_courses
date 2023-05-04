// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  int get seatsAvailable => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get noOfClasses => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String name,
      String description,
      double rating,
      Duration duration,
      int seatsAvailable,
      double price,
      int noOfClasses,
      String category});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? rating = null,
    Object? duration = null,
    Object? seatsAvailable = null,
    Object? price = null,
    Object? noOfClasses = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      seatsAvailable: null == seatsAvailable
          ? _value.seatsAvailable
          : seatsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      noOfClasses: null == noOfClasses
          ? _value.noOfClasses
          : noOfClasses // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      double rating,
      Duration duration,
      int seatsAvailable,
      double price,
      int noOfClasses,
      String category});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? rating = null,
    Object? duration = null,
    Object? seatsAvailable = null,
    Object? price = null,
    Object? noOfClasses = null,
    Object? category = null,
  }) {
    return _then(_$_Course(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      seatsAvailable: null == seatsAvailable
          ? _value.seatsAvailable
          : seatsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      noOfClasses: null == noOfClasses
          ? _value.noOfClasses
          : noOfClasses // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course with DiagnosticableTreeMixin implements _Course {
  const _$_Course(
      {required this.name,
      required this.description,
      required this.rating,
      required this.duration,
      required this.seatsAvailable,
      required this.price,
      required this.noOfClasses,
      required this.category});

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final double rating;
  @override
  final Duration duration;
  @override
  final int seatsAvailable;
  @override
  final double price;
  @override
  final int noOfClasses;
  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Course(name: $name, description: $description, rating: $rating, duration: $duration, seatsAvailable: $seatsAvailable, price: $price, noOfClasses: $noOfClasses, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Course'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('seatsAvailable', seatsAvailable))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('noOfClasses', noOfClasses))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.seatsAvailable, seatsAvailable) ||
                other.seatsAvailable == seatsAvailable) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.noOfClasses, noOfClasses) ||
                other.noOfClasses == noOfClasses) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, rating,
      duration, seatsAvailable, price, noOfClasses, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final String name,
      required final String description,
      required final double rating,
      required final Duration duration,
      required final int seatsAvailable,
      required final double price,
      required final int noOfClasses,
      required final String category}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  double get rating;
  @override
  Duration get duration;
  @override
  int get seatsAvailable;
  @override
  double get price;
  @override
  int get noOfClasses;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}
