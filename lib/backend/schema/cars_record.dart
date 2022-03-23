import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cars_record.g.dart';

abstract class CarsRecord implements Built<CarsRecord, CarsRecordBuilder> {
  static Serializer<CarsRecord> get serializer => _$carsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'car_name')
  String get carName;

  @nullable
  @BuiltValueField(wireName: 'car_price')
  String get carPrice;

  @nullable
  @BuiltValueField(wireName: 'create_at')
  DateTime get createAt;

  @nullable
  @BuiltValueField(wireName: 'car_link')
  String get carLink;

  @nullable
  String get descrip;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarsRecordBuilder builder) => builder
    ..carName = ''
    ..carPrice = ''
    ..carLink = ''
    ..descrip = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CarsRecord._();
  factory CarsRecord([void Function(CarsRecordBuilder) updates]) = _$CarsRecord;

  static CarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarsRecordData({
  String carName,
  String carPrice,
  DateTime createAt,
  String carLink,
  String descrip,
}) =>
    serializers.toFirestore(
        CarsRecord.serializer,
        CarsRecord((c) => c
          ..carName = carName
          ..carPrice = carPrice
          ..createAt = createAt
          ..carLink = carLink
          ..descrip = descrip));
