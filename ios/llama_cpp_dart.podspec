Pod::Spec.new do |s|
  s.name         = 'llama_cpp_dart'
  s.version      = '0.1.1'
  s.summary      = 'Dart binding for llama.cpp'
  s.description  = 'High-level Dart / Flutter bindings for llama.cpp.'
  s.homepage     = 'https://github.com/netdur/llama_cpp_dart'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Adel Abdelaty' => 'netdur@gmail.com' }

  s.source       = { :path => '.' }

  s.platform     = :ios, '16.4'
  s.swift_version = '5.9'

  # Empty source — this pod only vendors the Llama xcframework.
  # We intentionally do NOT use vendored_frameworks because that
  # links the framework at startup, and the Metal shader compilation
  # in libggml-metal causes the app to freeze on the splash screen.
  # Instead, the Podfile copies the framework into the app bundle
  # and Dart loads it lazily via DynamicLibrary.open().
  s.source_files = ['DummyPlaceholder.swift']

  s.dependency 'Flutter'
end
