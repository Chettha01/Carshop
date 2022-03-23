// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarsRecord> _$carsRecordSerializer = new _$CarsRecordSerializer();

class _$CarsRecordSerializer implements StructuredSerializer<CarsRecord> {
  @override
  final Iterable<Type> types = const [CarsRecord, _$CarsRecord];
  @override
  final String wireName = 'CarsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CarsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.carName;
    if (value != null) {
      result
        ..add('car_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carPrice;
    if (value != null) {
      result
        ..add('car_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createAt;
    if (value != null) {
      result
        ..add('create_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.carLink;
    if (value != null) {
      result
        ..add('car_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descrip;
    if (value != null) {
      result
        ..add('descrip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CarsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'car_name':
          result.carName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'car_price':
          result.carPrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'create_at':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'car_link':
          result.carLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descrip':
          result.descrip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CarsRecord extends CarsRecord {
  @override
  final String carName;
  @override
  final String carPrice;
  @override
  final DateTime createAt;
  @override
  final String carLink;
  @override
  final String descrip;
  @override
  final DocumentReference<Object> reference;

  factory _$CarsRecord([void Function(CarsRecordBuilder) updates]) =>
      (new CarsRecordBuilder()..update(updates)).build();

  _$CarsRecord._(
      {this.carName,
      this.carPrice,
      this.createAt,
      this.carLink,
      this.descrip,
      this.reference})
      : super._();

  @override
  CarsRecord rebuild(void Function(CarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarsRecordBuilder toBuilder() => new CarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarsRecord &&
        carName == other.carName &&
        carPrice == other.carPrice &&
        createAt == other.createAt &&
        carLink == other.carLink &&
        descrip == other.descrip &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, carName.hashCode), carPrice.hashCode),
                    createAt.hashCode),
                carLink.hashCode),
            descrip.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CarsRecord')
          ..add('carName', carName)
          ..add('carPrice', carPrice)
          ..add('createAt', createAt)
          ..add('carLink', carLink)
          ..add('descrip', descrip)
          ..add('reference', reference))
        .toString();
  }
}

class CarsRecordBuilder implements Builder<CarsRecord, CarsRecordBuilder> {
  _$CarsRecord _$v;

  String _carName;
  String get carName => _$this._carName;
  set carName(String carName) => _$this._carName = carName;

  String _carPrice;
  String get carPrice => _$this._carPrice;
  set carPrice(String carPrice) => _$this._carPrice = carPrice;

  DateTime _createAt;
  DateTime get createAt => _$this._createAt;
  set createAt(DateTime createAt) => _$this._createAt = createAt;

  String _carLink;
  String get carLink => _$this._carLink;
  set carLink(String carLink) => _$this._carLink = carLink;

  String _descrip;
  String get descrip => _$this._descrip;
  set descrip(String descrip) => _$this._descrip = descrip;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CarsRecordBuilder() {
    CarsRecord._initializeBuilder(this);
  }

  CarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carName = $v.carName;
      _carPrice = $v.carPrice;
      _createAt = $v.createAt;
      _carLink = $v.carLink;
      _descrip = $v.descrip;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarsRecord;
  }

  @override
  void update(void Function(CarsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CarsRecord build() {
    final _$result = _$v ??
        new _$CarsRecord._(
            carName: carName,
            carPrice: carPrice,
            createAt: createAt,
            carLink: carLink,
            descrip: descrip,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
