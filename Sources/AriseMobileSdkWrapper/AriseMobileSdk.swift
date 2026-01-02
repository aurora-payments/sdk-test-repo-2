// AriseMobileSdk
// This wrapper provides access to the binary frameworks
// All dependencies (OpenAPIRuntime, OpenAPIURLSession, CryptoSwift, SwiftASN1, X509)
// are already statically linked into AriseMobileSdkBinary, so we don't need to
// re-export them to avoid duplicate class definitions.

import Foundation

// Import CloudCommerce binary framework
@_exported import CloudCommerce

// Note: The AriseMobileSdk module from AriseMobileSdkBinary is automatically
// available because it's a dependency of this target. Since this wrapper target
// has the same name as the binary framework module, all public symbols from the
// binary framework will be accessible when importing AriseMobileSdk.
// The binary framework's public API (AriseMobileSdk class, Environment enum, etc.)
// will be available directly without needing to import it explicitly.
//
// Dependencies (OpenAPIRuntime, OpenAPIURLSession, CryptoSwift, SwiftASN1, X509)
// are already embedded in AriseMobileSdkBinary, so they should NOT be imported
// here to avoid duplicate class definitions at runtime.

