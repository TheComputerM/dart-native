// Copyright (c) 2023, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: argument_type_not_assignable
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: doc_directive_unknown
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: only_throw_errors
// ignore_for_file: overridden_fields
// ignore_for_file: prefer_double_quotes
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name
// ignore_for_file: use_super_parameters

import 'dart:ffi' as ffi;
import 'dart:isolate' show ReceivePort;

import 'package:jni/internal_helpers_for_jnigen.dart';
import 'package:jni/jni.dart' as jni;

/// from: `com.github.dart_lang.jnigen.SuspendFun`
class SuspendFun extends jni.JObject {
  @override
  late final jni.JObjType<SuspendFun> $type = type;

  SuspendFun.fromReference(
    jni.JReference reference,
  ) : super.fromReference(reference);

  static final _class =
      jni.JClass.forName(r'com/github/dart_lang/jnigen/SuspendFun');

  /// The type which includes information such as the signature of this class.
  static const type = $SuspendFunType();
  static final _id_new0 = _class.constructorId(
    r'()V',
  );

  static final _new0 = ProtectedJniExtensions.lookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                ffi.Pointer<ffi.Void>,
                jni.JMethodIDPtr,
              )>>('globalEnv_NewObject')
      .asFunction<
          jni.JniResult Function(
            ffi.Pointer<ffi.Void>,
            jni.JMethodIDPtr,
          )>();

  /// from: `public void <init>()`
  /// The returned object must be released after use, by calling the [release] method.
  factory SuspendFun() {
    return SuspendFun.fromReference(
        _new0(_class.reference.pointer, _id_new0 as jni.JMethodIDPtr)
            .reference);
  }

  static final _id_sayHello = _class.instanceMethodId(
    r'sayHello',
    r'(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;',
  );

  static final _sayHello = ProtectedJniExtensions.lookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>,
                      jni.JMethodIDPtr,
                      ffi.VarArgs<(ffi.Pointer<ffi.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          jni.JniResult Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
              ffi.Pointer<ffi.Void>)>();

  /// from: `public final java.lang.Object sayHello(kotlin.coroutines.Continuation continuation)`
  /// The returned object must be released after use, by calling the [release] method.
  Future<jni.JString> sayHello() async {
    final $p = ReceivePort();
    final $c = jni.JObject.fromReference(
        ProtectedJniExtensions.newPortContinuation($p));
    _sayHello(reference.pointer, _id_sayHello as jni.JMethodIDPtr,
            $c.reference.pointer)
        .object(const jni.JObjectType());
    final $o = jni.JGlobalReference(jni.JObjectPtr.fromAddress(await $p.first));
    final $k = const jni.JStringType().jClass.reference.pointer;
    if (!jni.Jni.env.IsInstanceOf($o.pointer, $k)) {
      throw 'Failed';
    }
    return const jni.JStringType().fromReference($o);
  }

  static final _id_sayHello1 = _class.instanceMethodId(
    r'sayHello',
    r'(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;',
  );

  static final _sayHello1 = ProtectedJniExtensions.lookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>,
                  jni.JMethodIDPtr,
                  ffi.VarArgs<
                      (
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>
                      )>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni.JniResult Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: `public final java.lang.Object sayHello(java.lang.String string, kotlin.coroutines.Continuation continuation)`
  /// The returned object must be released after use, by calling the [release] method.
  Future<jni.JString> sayHello1(
    jni.JString string,
  ) async {
    final $p = ReceivePort();
    final $c = jni.JObject.fromReference(
        ProtectedJniExtensions.newPortContinuation($p));
    _sayHello1(reference.pointer, _id_sayHello1 as jni.JMethodIDPtr,
            string.reference.pointer, $c.reference.pointer)
        .object(const jni.JObjectType());
    final $o = jni.JGlobalReference(jni.JObjectPtr.fromAddress(await $p.first));
    final $k = const jni.JStringType().jClass.reference.pointer;
    if (!jni.Jni.env.IsInstanceOf($o.pointer, $k)) {
      throw 'Failed';
    }
    return const jni.JStringType().fromReference($o);
  }
}

final class $SuspendFunType extends jni.JObjType<SuspendFun> {
  const $SuspendFunType();

  @override
  String get signature => r'Lcom/github/dart_lang/jnigen/SuspendFun;';

  @override
  SuspendFun fromReference(jni.JReference reference) =>
      SuspendFun.fromReference(reference);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($SuspendFunType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($SuspendFunType) && other is $SuspendFunType;
  }
}

final _TopLevelKtClass =
    jni.JClass.forName(r'com/github/dart_lang/jnigen/TopLevelKt');

final _id_getTopLevelField = _TopLevelKtClass.staticMethodId(
  r'getTopLevelField',
  r'()I',
);

final _getTopLevelField = ProtectedJniExtensions.lookup<
        ffi.NativeFunction<
            jni.JniResult Function(
              ffi.Pointer<ffi.Void>,
              jni.JMethodIDPtr,
            )>>('globalEnv_CallStaticIntMethod')
    .asFunction<
        jni.JniResult Function(
          ffi.Pointer<ffi.Void>,
          jni.JMethodIDPtr,
        )>();

/// from: `static public final int getTopLevelField()`
int getTopLevelField() {
  return _getTopLevelField(_TopLevelKtClass.reference.pointer,
          _id_getTopLevelField as jni.JMethodIDPtr)
      .integer;
}

final _id_setTopLevelField = _TopLevelKtClass.staticMethodId(
  r'setTopLevelField',
  r'(I)V',
);

final _setTopLevelField = ProtectedJniExtensions.lookup<
        ffi.NativeFunction<
            jni.JThrowablePtr Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
                ffi.VarArgs<($Int32,)>)>>('globalEnv_CallStaticVoidMethod')
    .asFunction<
        jni.JThrowablePtr Function(
            ffi.Pointer<ffi.Void>, jni.JMethodIDPtr, int)>();

/// from: `static public final void setTopLevelField(int i)`
void setTopLevelField(
  int i,
) {
  _setTopLevelField(_TopLevelKtClass.reference.pointer,
          _id_setTopLevelField as jni.JMethodIDPtr, i)
      .check();
}

final _id_topLevel = _TopLevelKtClass.staticMethodId(
  r'topLevel',
  r'()I',
);

final _topLevel = ProtectedJniExtensions.lookup<
        ffi.NativeFunction<
            jni.JniResult Function(
              ffi.Pointer<ffi.Void>,
              jni.JMethodIDPtr,
            )>>('globalEnv_CallStaticIntMethod')
    .asFunction<
        jni.JniResult Function(
          ffi.Pointer<ffi.Void>,
          jni.JMethodIDPtr,
        )>();

/// from: `static public final int topLevel()`
int topLevel() {
  return _topLevel(
          _TopLevelKtClass.reference.pointer, _id_topLevel as jni.JMethodIDPtr)
      .integer;
}

final _id_topLevelSum = _TopLevelKtClass.staticMethodId(
  r'topLevelSum',
  r'(II)I',
);

final _topLevelSum = ProtectedJniExtensions.lookup<
            ffi.NativeFunction<
                jni.JniResult Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
                    ffi.VarArgs<($Int32, $Int32)>)>>(
        'globalEnv_CallStaticIntMethod')
    .asFunction<
        jni.JniResult Function(
            ffi.Pointer<ffi.Void>, jni.JMethodIDPtr, int, int)>();

/// from: `static public final int topLevelSum(int i, int i1)`
int topLevelSum(
  int i,
  int i1,
) {
  return _topLevelSum(_TopLevelKtClass.reference.pointer,
          _id_topLevelSum as jni.JMethodIDPtr, i, i1)
      .integer;
}
