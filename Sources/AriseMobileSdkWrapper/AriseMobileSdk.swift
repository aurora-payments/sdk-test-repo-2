// AriseMobileSdk
// This wrapper provides access to the binary frameworks
// AriseMobileSdk.framework has dependencies (OpenAPIRuntime, OpenAPIURLSession) statically linked
// CloudCommerce.framework requires external dependencies (CryptoSwift, SwiftASN1, X509)

import Foundation

// Re-export the binary framework module
// The actual module name in AriseMobileSdk.xcframework is "AriseMobileSdk"
// We import it via the target dependency to make all public symbols available
// Note: The module name comes from the framework itself, not the target name
@_exported import AriseMobileSdk

// Import CloudCommerce binary framework
@_exported import CloudCommerce

// Import dependencies required by CloudCommerce
// These are not embedded in CloudCommerce.framework and must be provided externally
@_exported import CryptoSwift
@_exported import SwiftASN1
@_exported import X509

// Note: AriseMobileSdk.framework already includes OpenAPIRuntime and OpenAPIURLSession
// statically, so we don't import them here to avoid duplicate class definitions.
// CloudCommerce requires CryptoSwift, SwiftASN1, and X509 as external dependencies.

