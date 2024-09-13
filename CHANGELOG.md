# Changelog

All notable changes to this project will be documented in this file.

## [0.0.1] Initial release of the **Mic Info Plugin**.
- Added support for retrieving default, wired, and Bluetooth microphone information on Android and iOS platforms.
- Provided methods to:
    - Get the list of built-in (default) microphones.
    - Get the list of wired microphones (e.g., headset mics).
    - Get the list of Bluetooth microphones.
- Included platform-specific implementation for Android using `AudioManager` and `AudioDeviceInfo`.
- Included platform-specific implementation for iOS using `AVAudioSession`.
- Added `Device` model to represent microphone devices with `productName` and `id` attributes.
- Ensured microphone permissions are handled for Android (`RECORD_AUDIO`) and iOS (`NSMicrophoneUsageDescription`).