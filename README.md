# Demonstration of dart calling native code compiled through bazel
This demo demonostrates calling FFI code from dart, with the .dll (".so", ".dylib") compiled through bazel.

## Prerequisites
  - Have "bazel" installed, and available on the command-line.
  - Have "dart" installed (required for Windows) if you want to run the standalone demo.

## Run the demo 
(Bazel would download the dart sdk automatically by using github.com/cbracken/rules_dart. Only Linux and OSX are supported by the rules right now)
```
bazel run //demo
```
### Notes:
The rules above, require that your .dart file(s) are in a directory, such that it can get a package name.

## Run the standalone demo 
(This would use dart found on your system (e.g. your PATH)
```
bazel run //demo:standalone_demo
```

It should print something like this:

```
Dart: DynamicLibrary: handle=0x7ccb6c003d50 123 [[./native.dll]]
```
