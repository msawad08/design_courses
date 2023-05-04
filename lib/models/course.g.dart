// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      duration: Duration(microseconds: json['duration'] as int),
      seatsAvailable: json['seatsAvailable'] as int,
      price: (json['price'] as num).toDouble(),
      noOfClasses: json['noOfClasses'] as int,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'duration': instance.duration.inMicroseconds,
      'seatsAvailable': instance.seatsAvailable,
      'price': instance.price,
      'noOfClasses': instance.noOfClasses,
      'category': instance.category,
    };
