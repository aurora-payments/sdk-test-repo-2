// AriseMobileSdkWrapper
// This wrapper provides access to the binary frameworks
// Both frameworks require external dependencies that must be provided

import Foundation

// In SPM, binary target name MUST match the module name inside the framework
// IMPORTANT: After rebuilding the framework with PRODUCT_MODULE_NAME = AriseMobileSDK,
// change the import below to "AriseMobileSDK" (with capital SDK)
// Currently the framework module is "AriseMobileSdk" (old build, before PRODUCT_MODULE_NAME was set)
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

// Note: Both AriseMobileSdk and CloudCommerce require external dependencies.
// These dependencies are linked dynamically at runtime to avoid duplicate class definitions.

