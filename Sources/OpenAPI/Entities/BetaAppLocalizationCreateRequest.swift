// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaAppLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case betaAppLocalizations
		}

		public struct Attributes: Codable {
			public var feedbackEmail: String?
			public var marketingURL: String?
			public var privacyPolicyURL: String?
			public var tvOsPrivacyPolicy: String?
			public var description: String?
			public var locale: String

			public init(feedbackEmail: String? = nil, marketingURL: String? = nil, privacyPolicyURL: String? = nil, tvOsPrivacyPolicy: String? = nil, description: String? = nil, locale: String) {
				self.feedbackEmail = feedbackEmail
				self.marketingURL = marketingURL
				self.privacyPolicyURL = privacyPolicyURL
				self.tvOsPrivacyPolicy = tvOsPrivacyPolicy
				self.description = description
				self.locale = locale
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.feedbackEmail = try values.decodeIfPresent(String.self, forKey: "feedbackEmail")
				self.marketingURL = try values.decodeIfPresent(String.self, forKey: "marketingUrl")
				self.privacyPolicyURL = try values.decodeIfPresent(String.self, forKey: "privacyPolicyUrl")
				self.tvOsPrivacyPolicy = try values.decodeIfPresent(String.self, forKey: "tvOsPrivacyPolicy")
				self.description = try values.decodeIfPresent(String.self, forKey: "description")
				self.locale = try values.decode(String.self, forKey: "locale")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(feedbackEmail, forKey: "feedbackEmail")
				try values.encodeIfPresent(marketingURL, forKey: "marketingUrl")
				try values.encodeIfPresent(privacyPolicyURL, forKey: "privacyPolicyUrl")
				try values.encodeIfPresent(tvOsPrivacyPolicy, forKey: "tvOsPrivacyPolicy")
				try values.encodeIfPresent(description, forKey: "description")
				try values.encode(locale, forKey: "locale")
			}
		}

		public struct Relationships: Codable {
			public var app: App

			public struct App: Codable {
				public var data: Data

				public struct Data: Codable {
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

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(app: App) {
				self.app = app
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.app = try values.decode(App.self, forKey: "app")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(app, forKey: "app")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
