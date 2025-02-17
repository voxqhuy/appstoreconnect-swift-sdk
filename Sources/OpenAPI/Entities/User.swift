// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct User: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case users
	}

	public struct Attributes: Codable {
		public var username: String?
		public var firstName: String?
		public var lastName: String?
		public var roles: [UserRole]?
		public var isAllAppsVisible: Bool?
		public var isProvisioningAllowed: Bool?

		public init(username: String? = nil, firstName: String? = nil, lastName: String? = nil, roles: [UserRole]? = nil, isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
			self.username = username
			self.firstName = firstName
			self.lastName = lastName
			self.roles = roles
			self.isAllAppsVisible = isAllAppsVisible
			self.isProvisioningAllowed = isProvisioningAllowed
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.username = try values.decodeIfPresent(String.self, forKey: "username")
			self.firstName = try values.decodeIfPresent(String.self, forKey: "firstName")
			self.lastName = try values.decodeIfPresent(String.self, forKey: "lastName")
			self.roles = try values.decodeIfPresent([UserRole].self, forKey: "roles")
			self.isAllAppsVisible = try values.decodeIfPresent(Bool.self, forKey: "allAppsVisible")
			self.isProvisioningAllowed = try values.decodeIfPresent(Bool.self, forKey: "provisioningAllowed")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(username, forKey: "username")
			try values.encodeIfPresent(firstName, forKey: "firstName")
			try values.encodeIfPresent(lastName, forKey: "lastName")
			try values.encodeIfPresent(roles, forKey: "roles")
			try values.encodeIfPresent(isAllAppsVisible, forKey: "allAppsVisible")
			try values.encodeIfPresent(isProvisioningAllowed, forKey: "provisioningAllowed")
		}
	}

	public struct Relationships: Codable {
		public var visibleApps: VisibleApps?

		public struct VisibleApps: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case apps
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(visibleApps: VisibleApps? = nil) {
			self.visibleApps = visibleApps
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.visibleApps = try values.decodeIfPresent(VisibleApps.self, forKey: "visibleApps")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(visibleApps, forKey: "visibleApps")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
