// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: message_contents/private_preferences.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// Private Key Storage
///
/// Following definitions are not used in the protocol, instead
/// they provide a way for encoding private keys for storage.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// PrivatePreferencesAction is a message used to update the client's
/// preference store. The only current actions are allow and block.
/// Other actions may be added later
public struct Xmtp_MessageContents_PrivatePreferencesAction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var messageType: Xmtp_MessageContents_PrivatePreferencesAction.OneOf_MessageType? = nil

  public var allow: Xmtp_MessageContents_PrivatePreferencesAction.Allow {
	get {
	  if case .allow(let v)? = messageType {return v}
	  return Xmtp_MessageContents_PrivatePreferencesAction.Allow()
	}
	set {messageType = .allow(newValue)}
  }

  public var block: Xmtp_MessageContents_PrivatePreferencesAction.Block {
	get {
	  if case .block(let v)? = messageType {return v}
	  return Xmtp_MessageContents_PrivatePreferencesAction.Block()
	}
	set {messageType = .block(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MessageType: Equatable {
	case allow(Xmtp_MessageContents_PrivatePreferencesAction.Allow)
	case block(Xmtp_MessageContents_PrivatePreferencesAction.Block)

  #if !swift(>=4.1)
	public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesAction.OneOf_MessageType, rhs: Xmtp_MessageContents_PrivatePreferencesAction.OneOf_MessageType) -> Bool {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch (lhs, rhs) {
	  case (.allow, .allow): return {
		guard case .allow(let l) = lhs, case .allow(let r) = rhs else { preconditionFailure() }
		return l == r
	  }()
	  case (.block, .block): return {
		guard case .block(let l) = lhs, case .block(let r) = rhs else { preconditionFailure() }
		return l == r
	  }()
	  default: return false
	  }
	}
  #endif
  }

  /// Add the given wallet addresses to the allow list
  public struct Allow {
	// SwiftProtobuf.Message conformance is added in an extension below. See the
	// `Message` and `Message+*Additions` files in the SwiftProtobuf library for
	// methods supported on all messages.

	public var walletAddresses: [String] = []

	public var unknownFields = SwiftProtobuf.UnknownStorage()

	public init() {}
  }

  /// Add the given wallet addresses to the block list
  public struct Block {
	// SwiftProtobuf.Message conformance is added in an extension below. See the
	// `Message` and `Message+*Additions` files in the SwiftProtobuf library for
	// methods supported on all messages.

	public var walletAddresses: [String] = []

	public var unknownFields = SwiftProtobuf.UnknownStorage()

	public init() {}
  }

  public init() {}
}

/// The payload that goes over the wire
public struct Xmtp_MessageContents_PrivatePreferencesPayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var version: Xmtp_MessageContents_PrivatePreferencesPayload.OneOf_Version? = nil

  public var v1: Xmtp_MessageContents_Ciphertext {
	get {
	  if case .v1(let v)? = version {return v}
	  return Xmtp_MessageContents_Ciphertext()
	}
	set {version = .v1(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Version: Equatable {
	case v1(Xmtp_MessageContents_Ciphertext)

  #if !swift(>=4.1)
	public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesPayload.OneOf_Version, rhs: Xmtp_MessageContents_PrivatePreferencesPayload.OneOf_Version) -> Bool {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch (lhs, rhs) {
	  case (.v1, .v1): return {
		guard case .v1(let l) = lhs, case .v1(let r) = rhs else { preconditionFailure() }
		return l == r
	  }()
	  }
	}
  #endif
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Xmtp_MessageContents_PrivatePreferencesAction: @unchecked Sendable {}
extension Xmtp_MessageContents_PrivatePreferencesAction.OneOf_MessageType: @unchecked Sendable {}
extension Xmtp_MessageContents_PrivatePreferencesAction.Allow: @unchecked Sendable {}
extension Xmtp_MessageContents_PrivatePreferencesAction.Block: @unchecked Sendable {}
extension Xmtp_MessageContents_PrivatePreferencesPayload: @unchecked Sendable {}
extension Xmtp_MessageContents_PrivatePreferencesPayload.OneOf_Version: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "xmtp.message_contents"

extension Xmtp_MessageContents_PrivatePreferencesAction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PrivatePreferencesAction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
	1: .same(proto: "allow"),
	2: .same(proto: "block"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
	while let fieldNumber = try decoder.nextFieldNumber() {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch fieldNumber {
	  case 1: try {
		var v: Xmtp_MessageContents_PrivatePreferencesAction.Allow?
		var hadOneofValue = false
		if let current = self.messageType {
		  hadOneofValue = true
		  if case .allow(let m) = current {v = m}
		}
		try decoder.decodeSingularMessageField(value: &v)
		if let v = v {
		  if hadOneofValue {try decoder.handleConflictingOneOf()}
		  self.messageType = .allow(v)
		}
	  }()
	  case 2: try {
		var v: Xmtp_MessageContents_PrivatePreferencesAction.Block?
		var hadOneofValue = false
		if let current = self.messageType {
		  hadOneofValue = true
		  if case .block(let m) = current {v = m}
		}
		try decoder.decodeSingularMessageField(value: &v)
		if let v = v {
		  if hadOneofValue {try decoder.handleConflictingOneOf()}
		  self.messageType = .block(v)
		}
	  }()
	  default: break
	  }
	}
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
	// The use of inline closures is to circumvent an issue where the compiler
	// allocates stack space for every if/case branch local when no optimizations
	// are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
	// https://github.com/apple/swift-protobuf/issues/1182
	switch self.messageType {
	case .allow?: try {
	  guard case .allow(let v)? = self.messageType else { preconditionFailure() }
	  try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
	}()
	case .block?: try {
	  guard case .block(let v)? = self.messageType else { preconditionFailure() }
	  try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
	}()
	case nil: break
	}
	try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesAction, rhs: Xmtp_MessageContents_PrivatePreferencesAction) -> Bool {
	if lhs.messageType != rhs.messageType {return false}
	if lhs.unknownFields != rhs.unknownFields {return false}
	return true
  }
}

extension Xmtp_MessageContents_PrivatePreferencesAction.Allow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Xmtp_MessageContents_PrivatePreferencesAction.protoMessageName + ".Allow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
	1: .standard(proto: "wallet_addresses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
	while let fieldNumber = try decoder.nextFieldNumber() {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch fieldNumber {
	  case 1: try { try decoder.decodeRepeatedStringField(value: &self.walletAddresses) }()
	  default: break
	  }
	}
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
	if !self.walletAddresses.isEmpty {
	  try visitor.visitRepeatedStringField(value: self.walletAddresses, fieldNumber: 1)
	}
	try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesAction.Allow, rhs: Xmtp_MessageContents_PrivatePreferencesAction.Allow) -> Bool {
	if lhs.walletAddresses != rhs.walletAddresses {return false}
	if lhs.unknownFields != rhs.unknownFields {return false}
	return true
  }
}

extension Xmtp_MessageContents_PrivatePreferencesAction.Block: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Xmtp_MessageContents_PrivatePreferencesAction.protoMessageName + ".Block"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
	1: .standard(proto: "wallet_addresses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
	while let fieldNumber = try decoder.nextFieldNumber() {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch fieldNumber {
	  case 1: try { try decoder.decodeRepeatedStringField(value: &self.walletAddresses) }()
	  default: break
	  }
	}
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
	if !self.walletAddresses.isEmpty {
	  try visitor.visitRepeatedStringField(value: self.walletAddresses, fieldNumber: 1)
	}
	try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesAction.Block, rhs: Xmtp_MessageContents_PrivatePreferencesAction.Block) -> Bool {
	if lhs.walletAddresses != rhs.walletAddresses {return false}
	if lhs.unknownFields != rhs.unknownFields {return false}
	return true
  }
}

extension Xmtp_MessageContents_PrivatePreferencesPayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PrivatePreferencesPayload"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
	1: .same(proto: "v1"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
	while let fieldNumber = try decoder.nextFieldNumber() {
	  // The use of inline closures is to circumvent an issue where the compiler
	  // allocates stack space for every case branch when no optimizations are
	  // enabled. https://github.com/apple/swift-protobuf/issues/1034
	  switch fieldNumber {
	  case 1: try {
		var v: Xmtp_MessageContents_Ciphertext?
		var hadOneofValue = false
		if let current = self.version {
		  hadOneofValue = true
		  if case .v1(let m) = current {v = m}
		}
		try decoder.decodeSingularMessageField(value: &v)
		if let v = v {
		  if hadOneofValue {try decoder.handleConflictingOneOf()}
		  self.version = .v1(v)
		}
	  }()
	  default: break
	  }
	}
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
	// The use of inline closures is to circumvent an issue where the compiler
	// allocates stack space for every if/case branch local when no optimizations
	// are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
	// https://github.com/apple/swift-protobuf/issues/1182
	try { if case .v1(let v)? = self.version {
	  try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
	} }()
	try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Xmtp_MessageContents_PrivatePreferencesPayload, rhs: Xmtp_MessageContents_PrivatePreferencesPayload) -> Bool {
	if lhs.version != rhs.version {return false}
	if lhs.unknownFields != rhs.unknownFields {return false}
	return true
  }
}