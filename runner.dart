import 'dart:ffi' as ffi;

typedef core_version_func = ffi.Int32 Function();
typedef CoreVersionFunc = int Function();

void main(List<String> args) {
  var lib = ffi.DynamicLibrary.open(args[0]);
  final CoreVersionFunc coreVersion = lib.lookup<ffi.NativeFunction<core_version_func>>("core_version").asFunction();
  print("Dart: $lib ${coreVersion()} [$args]");
}