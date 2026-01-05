// AriseMobileSdkWrapper
// This wrapper provides access to the binary frameworks
// Both frameworks require external dependencies that must be provided

import Foundation

// In SPM, binary target name MUST match the module name inside the framework
// The framework's module is "AriseMobileSDK" (from PRODUCT_MODULE_NAME)
// Module name "AriseMobileSDK" differs from class name "AriseMobileSdk" to avoid conflicts
// We import using the target name, which matches the module name
@_exported import AriseMobileSDK

// Import CloudCommerce using module name (target name matches module name)
@_exported import CloudCommerce

// Import dependencies required by AriseMobileSdk
@_exported import OpenAPIRuntime
@_exported import OpenAPIURLSession
@_exported import HTTPTypes

// Import dependencies required by CloudCommerce
@_exported import CryptoSwift
@_exported import SwiftASN1
@_exported import X509

// @_exported import should automatically export all public types from AriseMobileSDK
// Types should be available directly: AriseMobileSdk, LogLevel, Environment
// Note: If @_exported import doesn't work, types may need to be accessed via module prefix:
// AriseMobileSDK.AriseMobileSdk, AriseMobileSDK.LogLevel, AriseMobileSDK.Environment

// Note: Both AriseMobileSdk and CloudCommerce require external dependencies.
// These dependencies are linked dynamically at runtime to avoid duplicate class definitions.
