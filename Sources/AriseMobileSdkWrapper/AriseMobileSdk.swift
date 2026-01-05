// AriseMobileSdkWrapper
// This wrapper provides access to the binary frameworks
// Both frameworks require external dependencies that must be provided

import Foundation

// In SPM, binary target name MUST match the module name inside the framework
// The framework's module is "AriseMobileSDK" (from PRODUCT_MODULE_NAME)
// Module name "AriseMobileSDK" differs from class name "AriseMobileSdk" to avoid conflicts
// We import using the target name, which matches the module name
import AriseMobileSDK

// Import CloudCommerce using module name (target name matches module name)
import CloudCommerce

// Import dependencies required by AriseMobileSdk
@_exported import OpenAPIRuntime
@_exported import OpenAPIURLSession
@_exported import HTTPTypes

// Import dependencies required by CloudCommerce
@_exported import CryptoSwift
@_exported import SwiftASN1
@_exported import X509

// Explicitly re-export types from binary frameworks
// @_exported import doesn't work reliably with binary targets in wrapper targets
// So we explicitly re-export the types that are commonly used
public typealias AriseMobileSdk = AriseMobileSDK.AriseMobileSdk
public typealias LogLevel = AriseMobileSDK.LogLevel
public typealias Environment = AriseMobileSDK.Environment
public typealias CloudCommerceSDK = CloudCommerce.CloudCommerceSDK

// Note: Both AriseMobileSdk and CloudCommerce require external dependencies.
// These dependencies are linked dynamically at runtime to avoid duplicate class definitions.
