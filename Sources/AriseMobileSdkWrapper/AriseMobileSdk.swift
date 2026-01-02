// AriseMobileSdk
// This wrapper provides access to the binary frameworks
// All dependencies (OpenAPIRuntime, OpenAPIURLSession, CryptoSwift, SwiftASN1, X509)
// are already statically linked into the binary framework, so we don't need to
// re-export them to avoid duplicate class definitions.

import Foundation

// Re-export the binary framework module
// The module name from the XCFramework is AriseMobileSdk (from the framework name)
// but we reference it via the target name AriseMobileSdkBinary in Package.swift
// We need to import using the actual module name from the framework
// Check: If this doesn't work, the framework might export the module with a different name
@_exported import AriseMobileSdkBinary

// Import CloudCommerce binary framework
@_exported import CloudCommerceBinary

// Note: Dependencies (OpenAPIRuntime, OpenAPIURLSession, CryptoSwift, SwiftASN1, X509)
// are already embedded in the binary framework, so they should NOT be imported
// here to avoid duplicate class definitions at runtime.

