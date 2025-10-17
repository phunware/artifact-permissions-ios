# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.5.1][] - 2025-10-17

### Changed

- Changed to "Do Not Embebed" for PhunwarePermissionCommon.framework

## [1.5.0][] - 2025-05-22

### Added

- Added support for dynamic loading
- Added speech recognition permission 

## [1.4.0][] - 2024-07-13

### Added

- Added privacy manifest
- Added French localization

### Changed

- Bumped minimum iOS deployment target to 15.5
- Updated PhunwareFoundation to 1.1.0
- Updated PhunwareTheming to 1.1.0

## [1.3.2][] - 2023-10-02

### Fixed

- Fixed an issue where full screen priming screens eligible for requesting permissions would be unexpectedly removed from the provided navigation controller

## [1.3.1][] - 2023-09-14

### Fixed

- Fixed an issue where priming for location permission could become unresponsive after visiting a web view that requests location

## [1.3.0][] - 2023-09-06

### Added

- Added `PermissionPrimingCompletionNavigationAction` which allows for the caller to decide whether or not the module should take the action of removing all full screen priming screens from the provided navigation controller after priming has completed

### Changed

- Improved navigation transition animations after full screen priming has completed

### Fixed

- Fixed an issue where full screen priming screens would continue to show and be non-responsive in a tab if all of the corresponding permissions were granted or denied within a separate tab

## [1.2.1][] - 2022-09-08

### Fixed

- Fixed an issue where one time full accuracy upgrade location permission requests would unexpectedly fail

## [1.2.0][] - 2022-08-22

### Added

- Initial release

[1.5.1]: https://github.com/phunware/artifact-permissions-ios/compare/1.5.0...1.5.1
[1.5.0]: https://github.com/phunware/artifact-permissions-ios/compare/1.4.0...1.5.0
[1.4.0]: https://github.com/phunware/artifact-permissions-ios/compare/1.3.2...1.4.0
[1.3.2]: https://github.com/phunware/artifact-permissions-ios/compare/1.3.1...1.3.2
[1.3.1]: https://github.com/phunware/artifact-permissions-ios/compare/1.3.0...1.3.1
[1.3.0]: https://github.com/phunware/artifact-permissions-ios/compare/1.2.1...1.3.0
[1.2.1]: https://github.com/phunware/artifact-permissions-ios/compare/1.2.0...1.2.1
[1.2.0]: https://github.com/phunware/artifact-permissions-ios/tree/1.2.0
