// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case subscriptions
		}

		public struct Attributes: Codable {
			public var name: String
			public var productID: String
			public var isFamilySharable: Bool?
			public var subscriptionPeriod: SubscriptionPeriod?
			public var reviewNote: String?
			public var groupLevel: Int?
			/// - warning: Deprecated.
			public var isAvailableInAllTerritories: Bool?

			public enum SubscriptionPeriod: String, Codable, CaseIterable {
				case oneWeek = "ONE_WEEK"
				case oneMonth = "ONE_MONTH"
				case twoMonths = "TWO_MONTHS"
				case threeMonths = "THREE_MONTHS"
				case sixMonths = "SIX_MONTHS"
				case oneYear = "ONE_YEAR"
			}

			public init(name: String, productID: String, isFamilySharable: Bool? = nil, subscriptionPeriod: SubscriptionPeriod? = nil, reviewNote: String? = nil, groupLevel: Int? = nil, isAvailableInAllTerritories: Bool? = nil) {
				self.name = name
				self.productID = productID
				self.isFamilySharable = isFamilySharable
				self.subscriptionPeriod = subscriptionPeriod
				self.reviewNote = reviewNote
				self.groupLevel = groupLevel
				self.isAvailableInAllTerritories = isAvailableInAllTerritories
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decode(String.self, forKey: "name")
				self.productID = try values.decode(String.self, forKey: "productId")
				self.isFamilySharable = try values.decodeIfPresent(Bool.self, forKey: "familySharable")
				self.subscriptionPeriod = try values.decodeIfPresent(SubscriptionPeriod.self, forKey: "subscriptionPeriod")
				self.reviewNote = try values.decodeIfPresent(String.self, forKey: "reviewNote")
				self.groupLevel = try values.decodeIfPresent(Int.self, forKey: "groupLevel")
				self.isAvailableInAllTerritories = try values.decodeIfPresent(Bool.self, forKey: "availableInAllTerritories")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(name, forKey: "name")
				try values.encode(productID, forKey: "productId")
				try values.encodeIfPresent(isFamilySharable, forKey: "familySharable")
				try values.encodeIfPresent(subscriptionPeriod, forKey: "subscriptionPeriod")
				try values.encodeIfPresent(reviewNote, forKey: "reviewNote")
				try values.encodeIfPresent(groupLevel, forKey: "groupLevel")
				try values.encodeIfPresent(isAvailableInAllTerritories, forKey: "availableInAllTerritories")
			}
		}

		public struct Relationships: Codable {
			public var group: Group

			public struct Group: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case subscriptionGroups
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

			public init(group: Group) {
				self.group = group
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.group = try values.decode(Group.self, forKey: "group")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(group, forKey: "group")
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
