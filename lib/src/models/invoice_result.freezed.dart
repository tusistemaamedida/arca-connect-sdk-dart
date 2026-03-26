// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceResult {
  bool get approved => throw _privateConstructorUsedError;
  String? get cae => throw _privateConstructorUsedError;
  String? get caeVto => throw _privateConstructorUsedError;
  int get cbteNumero => throw _privateConstructorUsedError;
  String get resultado => throw _privateConstructorUsedError;
  List<String> get observaciones => throw _privateConstructorUsedError;
  List<String> get errores => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceResultCopyWith<InvoiceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceResultCopyWith<$Res> {
  factory $InvoiceResultCopyWith(
          InvoiceResult value, $Res Function(InvoiceResult) then) =
      _$InvoiceResultCopyWithImpl<$Res, InvoiceResult>;
  @useResult
  $Res call(
      {bool approved,
      String? cae,
      String? caeVto,
      int cbteNumero,
      String resultado,
      List<String> observaciones,
      List<String> errores});
}

/// @nodoc
class _$InvoiceResultCopyWithImpl<$Res, $Val extends InvoiceResult>
    implements $InvoiceResultCopyWith<$Res> {
  _$InvoiceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approved = null,
    Object? cae = freezed,
    Object? caeVto = freezed,
    Object? cbteNumero = null,
    Object? resultado = null,
    Object? observaciones = null,
    Object? errores = null,
  }) {
    return _then(_value.copyWith(
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
      cae: freezed == cae
          ? _value.cae
          : cae // ignore: cast_nullable_to_non_nullable
              as String?,
      caeVto: freezed == caeVto
          ? _value.caeVto
          : caeVto // ignore: cast_nullable_to_non_nullable
              as String?,
      cbteNumero: null == cbteNumero
          ? _value.cbteNumero
          : cbteNumero // ignore: cast_nullable_to_non_nullable
              as int,
      resultado: null == resultado
          ? _value.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: null == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errores: null == errores
          ? _value.errores
          : errores // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceResultImplCopyWith<$Res>
    implements $InvoiceResultCopyWith<$Res> {
  factory _$$InvoiceResultImplCopyWith(
          _$InvoiceResultImpl value, $Res Function(_$InvoiceResultImpl) then) =
      __$$InvoiceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool approved,
      String? cae,
      String? caeVto,
      int cbteNumero,
      String resultado,
      List<String> observaciones,
      List<String> errores});
}

/// @nodoc
class __$$InvoiceResultImplCopyWithImpl<$Res>
    extends _$InvoiceResultCopyWithImpl<$Res, _$InvoiceResultImpl>
    implements _$$InvoiceResultImplCopyWith<$Res> {
  __$$InvoiceResultImplCopyWithImpl(
      _$InvoiceResultImpl _value, $Res Function(_$InvoiceResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approved = null,
    Object? cae = freezed,
    Object? caeVto = freezed,
    Object? cbteNumero = null,
    Object? resultado = null,
    Object? observaciones = null,
    Object? errores = null,
  }) {
    return _then(_$InvoiceResultImpl(
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
      cae: freezed == cae
          ? _value.cae
          : cae // ignore: cast_nullable_to_non_nullable
              as String?,
      caeVto: freezed == caeVto
          ? _value.caeVto
          : caeVto // ignore: cast_nullable_to_non_nullable
              as String?,
      cbteNumero: null == cbteNumero
          ? _value.cbteNumero
          : cbteNumero // ignore: cast_nullable_to_non_nullable
              as int,
      resultado: null == resultado
          ? _value.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: null == observaciones
          ? _value._observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errores: null == errores
          ? _value._errores
          : errores // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InvoiceResultImpl implements _InvoiceResult {
  const _$InvoiceResultImpl(
      {required this.approved,
      this.cae,
      this.caeVto,
      required this.cbteNumero,
      required this.resultado,
      final List<String> observaciones = const <String>[],
      final List<String> errores = const <String>[]})
      : _observaciones = observaciones,
        _errores = errores;

  @override
  final bool approved;
  @override
  final String? cae;
  @override
  final String? caeVto;
  @override
  final int cbteNumero;
  @override
  final String resultado;
  final List<String> _observaciones;
  @override
  @JsonKey()
  List<String> get observaciones {
    if (_observaciones is EqualUnmodifiableListView) return _observaciones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_observaciones);
  }

  final List<String> _errores;
  @override
  @JsonKey()
  List<String> get errores {
    if (_errores is EqualUnmodifiableListView) return _errores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errores);
  }

  @override
  String toString() {
    return 'InvoiceResult(approved: $approved, cae: $cae, caeVto: $caeVto, cbteNumero: $cbteNumero, resultado: $resultado, observaciones: $observaciones, errores: $errores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceResultImpl &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.cae, cae) || other.cae == cae) &&
            (identical(other.caeVto, caeVto) || other.caeVto == caeVto) &&
            (identical(other.cbteNumero, cbteNumero) ||
                other.cbteNumero == cbteNumero) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado) &&
            const DeepCollectionEquality()
                .equals(other._observaciones, _observaciones) &&
            const DeepCollectionEquality().equals(other._errores, _errores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      approved,
      cae,
      caeVto,
      cbteNumero,
      resultado,
      const DeepCollectionEquality().hash(_observaciones),
      const DeepCollectionEquality().hash(_errores));

  /// Create a copy of InvoiceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceResultImplCopyWith<_$InvoiceResultImpl> get copyWith =>
      __$$InvoiceResultImplCopyWithImpl<_$InvoiceResultImpl>(this, _$identity);
}

abstract class _InvoiceResult implements InvoiceResult {
  const factory _InvoiceResult(
      {required final bool approved,
      final String? cae,
      final String? caeVto,
      required final int cbteNumero,
      required final String resultado,
      final List<String> observaciones,
      final List<String> errores}) = _$InvoiceResultImpl;

  @override
  bool get approved;
  @override
  String? get cae;
  @override
  String? get caeVto;
  @override
  int get cbteNumero;
  @override
  String get resultado;
  @override
  List<String> get observaciones;
  @override
  List<String> get errores;

  /// Create a copy of InvoiceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceResultImplCopyWith<_$InvoiceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
