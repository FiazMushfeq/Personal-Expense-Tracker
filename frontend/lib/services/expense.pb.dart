//
//  Generated code. Do not modify.
//  source: expense.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expense.pbenum.dart';

export 'expense.pbenum.dart';

class Expense extends $pb.GeneratedMessage {
  factory Expense({
    $core.int? id,
    $core.String? title,
    $core.double? amount,
    ExpenseCategory? category,
    $core.String? date,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (category != null) {
      $result.category = category;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  Expense._() : super();
  factory Expense.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expense.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expense', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..e<ExpenseCategory>(4, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.UNKNOWN, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..aOS(5, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expense clone() => Expense()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expense copyWith(void Function(Expense) updates) => super.copyWith((message) => updates(message as Expense)) as Expense;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expense create() => Expense._();
  Expense createEmptyInstance() => create();
  static $pb.PbList<Expense> createRepeated() => $pb.PbList<Expense>();
  @$core.pragma('dart2js:noInline')
  static Expense getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expense>(create);
  static Expense? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  ExpenseCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(ExpenseCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);
}

class CreateExpenseRequest extends $pb.GeneratedMessage {
  factory CreateExpenseRequest({
    Expense? expense,
  }) {
    final $result = create();
    if (expense != null) {
      $result.expense = expense;
    }
    return $result;
  }
  CreateExpenseRequest._() : super();
  factory CreateExpenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateExpenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpenseRequest', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expense', subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateExpenseRequest clone() => CreateExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateExpenseRequest copyWith(void Function(CreateExpenseRequest) updates) => super.copyWith((message) => updates(message as CreateExpenseRequest)) as CreateExpenseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpenseRequest create() => CreateExpenseRequest._();
  CreateExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<CreateExpenseRequest> createRepeated() => $pb.PbList<CreateExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpenseRequest>(create);
  static CreateExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expense => $_getN(0);
  @$pb.TagNumber(1)
  set expense(Expense v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpense() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpense() => clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpense() => $_ensure(0);
}

class DeleteExpenseRequest extends $pb.GeneratedMessage {
  factory DeleteExpenseRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteExpenseRequest._() : super();
  factory DeleteExpenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteExpenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpenseRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteExpenseRequest clone() => DeleteExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteExpenseRequest copyWith(void Function(DeleteExpenseRequest) updates) => super.copyWith((message) => updates(message as DeleteExpenseRequest)) as DeleteExpenseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpenseRequest create() => DeleteExpenseRequest._();
  DeleteExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteExpenseRequest> createRepeated() => $pb.PbList<DeleteExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpenseRequest>(create);
  static DeleteExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateExpenseRequest extends $pb.GeneratedMessage {
  factory UpdateExpenseRequest({
    Expense? expense,
  }) {
    final $result = create();
    if (expense != null) {
      $result.expense = expense;
    }
    return $result;
  }
  UpdateExpenseRequest._() : super();
  factory UpdateExpenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateExpenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpenseRequest', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expense', subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateExpenseRequest clone() => UpdateExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateExpenseRequest copyWith(void Function(UpdateExpenseRequest) updates) => super.copyWith((message) => updates(message as UpdateExpenseRequest)) as UpdateExpenseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpenseRequest create() => UpdateExpenseRequest._();
  UpdateExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateExpenseRequest> createRepeated() => $pb.PbList<UpdateExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpenseRequest>(create);
  static UpdateExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expense => $_getN(0);
  @$pb.TagNumber(1)
  set expense(Expense v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpense() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpense() => clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpense() => $_ensure(0);
}

class GetExpenseRequest extends $pb.GeneratedMessage {
  factory GetExpenseRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetExpenseRequest._() : super();
  factory GetExpenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetExpenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetExpenseRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetExpenseRequest clone() => GetExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetExpenseRequest copyWith(void Function(GetExpenseRequest) updates) => super.copyWith((message) => updates(message as GetExpenseRequest)) as GetExpenseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetExpenseRequest create() => GetExpenseRequest._();
  GetExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<GetExpenseRequest> createRepeated() => $pb.PbList<GetExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static GetExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetExpenseRequest>(create);
  static GetExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ListExpensesRequest extends $pb.GeneratedMessage {
  factory ListExpensesRequest({
    $core.String? date,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  ListExpensesRequest._() : super();
  factory ListExpensesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpensesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpensesRequest clone() => ListExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpensesRequest copyWith(void Function(ListExpensesRequest) updates) => super.copyWith((message) => updates(message as ListExpensesRequest)) as ListExpensesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest create() => ListExpensesRequest._();
  ListExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<ListExpensesRequest> createRepeated() => $pb.PbList<ListExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesRequest>(create);
  static ListExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);
}

class CreateExpenseResponse extends $pb.GeneratedMessage {
  factory CreateExpenseResponse({
    $core.int? id,
    $core.String? error,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  CreateExpenseResponse._() : super();
  factory CreateExpenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateExpenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpenseResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateExpenseResponse clone() => CreateExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateExpenseResponse copyWith(void Function(CreateExpenseResponse) updates) => super.copyWith((message) => updates(message as CreateExpenseResponse)) as CreateExpenseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpenseResponse create() => CreateExpenseResponse._();
  CreateExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<CreateExpenseResponse> createRepeated() => $pb.PbList<CreateExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpenseResponse>(create);
  static CreateExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class DeleteExpenseResponse extends $pb.GeneratedMessage {
  factory DeleteExpenseResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteExpenseResponse._() : super();
  factory DeleteExpenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteExpenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpenseResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteExpenseResponse clone() => DeleteExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteExpenseResponse copyWith(void Function(DeleteExpenseResponse) updates) => super.copyWith((message) => updates(message as DeleteExpenseResponse)) as DeleteExpenseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpenseResponse create() => DeleteExpenseResponse._();
  DeleteExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteExpenseResponse> createRepeated() => $pb.PbList<DeleteExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpenseResponse>(create);
  static DeleteExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UpdateExpenseResponse extends $pb.GeneratedMessage {
  factory UpdateExpenseResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  UpdateExpenseResponse._() : super();
  factory UpdateExpenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateExpenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpenseResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateExpenseResponse clone() => UpdateExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateExpenseResponse copyWith(void Function(UpdateExpenseResponse) updates) => super.copyWith((message) => updates(message as UpdateExpenseResponse)) as UpdateExpenseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpenseResponse create() => UpdateExpenseResponse._();
  UpdateExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateExpenseResponse> createRepeated() => $pb.PbList<UpdateExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpenseResponse>(create);
  static UpdateExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class GetExpenseResponse extends $pb.GeneratedMessage {
  factory GetExpenseResponse({
    Expense? expenses,
    SuccessStatus? status,
  }) {
    final $result = create();
    if (expenses != null) {
      $result.expenses = expenses;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  GetExpenseResponse._() : super();
  factory GetExpenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetExpenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetExpenseResponse', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expenses', subBuilder: Expense.create)
    ..aOM<SuccessStatus>(2, _omitFieldNames ? '' : 'status', subBuilder: SuccessStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetExpenseResponse clone() => GetExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetExpenseResponse copyWith(void Function(GetExpenseResponse) updates) => super.copyWith((message) => updates(message as GetExpenseResponse)) as GetExpenseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetExpenseResponse create() => GetExpenseResponse._();
  GetExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<GetExpenseResponse> createRepeated() => $pb.PbList<GetExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static GetExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetExpenseResponse>(create);
  static GetExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expenses => $_getN(0);
  @$pb.TagNumber(1)
  set expenses(Expense v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpenses() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpenses() => clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpenses() => $_ensure(0);

  @$pb.TagNumber(2)
  SuccessStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(SuccessStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  SuccessStatus ensureStatus() => $_ensure(1);
}

class ListExpensesResponse extends $pb.GeneratedMessage {
  factory ListExpensesResponse({
    $core.Iterable<Expense>? expenses,
  }) {
    final $result = create();
    if (expenses != null) {
      $result.expenses.addAll(expenses);
    }
    return $result;
  }
  ListExpensesResponse._() : super();
  factory ListExpensesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpensesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesResponse', createEmptyInstance: create)
    ..pc<Expense>(1, _omitFieldNames ? '' : 'expenses', $pb.PbFieldType.PM, subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpensesResponse clone() => ListExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpensesResponse copyWith(void Function(ListExpensesResponse) updates) => super.copyWith((message) => updates(message as ListExpensesResponse)) as ListExpensesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse create() => ListExpensesResponse._();
  ListExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<ListExpensesResponse> createRepeated() => $pb.PbList<ListExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesResponse>(create);
  static ListExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Expense> get expenses => $_getList(0);
}

class SuccessStatus extends $pb.GeneratedMessage {
  factory SuccessStatus({
    $core.int? code,
    $core.String? msg,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  SuccessStatus._() : super();
  factory SuccessStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuccessStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuccessStatus', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuccessStatus clone() => SuccessStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuccessStatus copyWith(void Function(SuccessStatus) updates) => super.copyWith((message) => updates(message as SuccessStatus)) as SuccessStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuccessStatus create() => SuccessStatus._();
  SuccessStatus createEmptyInstance() => create();
  static $pb.PbList<SuccessStatus> createRepeated() => $pb.PbList<SuccessStatus>();
  @$core.pragma('dart2js:noInline')
  static SuccessStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuccessStatus>(create);
  static SuccessStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
