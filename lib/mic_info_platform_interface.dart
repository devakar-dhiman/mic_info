import 'package:mic_info/mic_info_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';


/// An abstract class that represents the platform interface for accessing
/// microphone information (wired, Bluetooth, default) in a Flutter plugin.
abstract class MicInfoPlatform extends PlatformInterface {
  /// Constructs a MicInfoPlatform.
  /// This ensures that only platform-specific implementations can extend this class.
  MicInfoPlatform() : super(token: _token);

  // A token used for verifying that platform-specific implementations are legitimate.
  static final Object _token = Object();

  // The default instance of MicInfoPlatform, set to MethodChannelMicInfo.
  // MethodChannelMicInfo is the default platform-specific implementation that uses method channels.
  static MicInfoPlatform _instance = MethodChannelMicInfo();

  /// The default instance of [MicInfoPlatform] to use.
  /// This allows you to access the instance of MicInfoPlatform throughout your app.
  ///
  /// Defaults to [MethodChannelMicInfo], which uses method channels for communication
  /// between Dart and platform-specific code.
  static MicInfoPlatform get instance => _instance;

  /// Allows platform-specific implementations to override the default instance
  /// with their own class that extends [MicInfoPlatform].
  static set instance(MicInfoPlatform instance) {
    // Ensures the platform-specific implementation provides a valid token.
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Abstract method to get the active microphones.
  /// This will throw an UnimplementedError unless overridden by a platform-specific class.
  Future<List<dynamic>> getActiveMicrophones() {
    throw UnimplementedError(
        'getActiveDevices() has not been implemented.');
  }

  /// Abstract method to get the Bluetooth microphones.
  /// This will throw an UnimplementedError unless overridden by a platform-specific class.
  Future<List<dynamic>> getBluetoothMicrophones() {
    throw UnimplementedError(
        'getBluetoothMicrophone() has not been implemented.');
  }

  /// Abstract method to get the default microphones.
  /// This will throw an UnimplementedError unless overridden by a platform-specific class.
  Future<List<dynamic>> getDefaultMicrophones() {
    throw UnimplementedError(
        'getDefaultMicrophones() has not been implemented.');
  }

  /// Abstract method to get the wired microphones.
  /// This will throw an UnimplementedError unless overridden by a platform-specific class.
  Future<List<dynamic>> getWiredMicrophones() {
    throw UnimplementedError('getWiredMicrophones() has not been implemented.');
  }
}
