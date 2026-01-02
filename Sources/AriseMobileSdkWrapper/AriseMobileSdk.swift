// AriseMobileSdk
// This wrapper ensures dependencies are linked with the binary frameworks
// The binary frameworks are linked through dependencies in Package.swift

import Foundation

// Import CloudCommerce binary framework
@_exported import CloudCommerce

// Re-export dependencies that are required by the binary frameworks
@_exported import OpenAPIRuntime
@_exported import OpenAPIURLSession
@_exported import CryptoSwift
@_exported import SwiftASN1
@_exported import X509
// Note: The AriseMobileSdk module from AriseMobileSdkBinary is automatically
// available because it's a dependency of this target. Since this wrapper target
// has the same name as the binary framework module, all public symbols from the
// binary framework will be accessible when importing AriseMobileSdk.
// The binary framework's public API (AriseMobileSdk class, Environment enum, etc.)
// will be available directly without needing to import it explicitly.

