// AriseMobileSdkWrapper
// This wrapper provides access to the binary frameworks
// AriseMobileSdk.framework has dependencies (OpenAPIRuntime, OpenAPIURLSession) statically linked
// CloudCommerce.framework requires external dependencies (CryptoSwift, SwiftASN1, X509)

import Foundation

// In SPM, binary target name MUST match the module name inside the framework
// The binary target is named "AriseMobileSdk" to match the module name from the framework
// We import using the target name, which matches the module name
@_exported import AriseMobileSdk

// Import CloudCommerce using module name (target name matches module name)
@_exported import CloudCommerce

// Import dependencies required by CloudCommerce
@_exported import CryptoSwift
@_exported import SwiftASN1
@_exported import X509

// Note: AriseMobileSdk.framework already includes OpenAPIRuntime and OpenAPIURLSession
// statically, so we don't import them here to avoid duplicate class definitions.
// CloudCommerce requires CryptoSwift, SwiftASN1, and X509 as external dependencies.

