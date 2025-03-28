// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var subscriptionLocalizations: SubscriptionLocalizations {
		SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
	}

	public struct SubscriptionLocalizations {
		/// Path: `/v1/subscriptions/{id}/subscriptionLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptions-subscriptionLocalizations-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case familySharable
				case group
				case groupLevel
				case introductoryOffers
				case name
				case offerCodes
				case pricePoints
				case prices
				case productID = "productId"
				case promotedPurchase
				case promotionalOffers
				case reviewNote
				case state
				case subscriptionAvailability
				case subscriptionLocalizations
				case subscriptionPeriod
			}

			public enum FieldsSubscriptionLocalizations: String, Codable, CaseIterable {
				case description
				case locale
				case name
				case state
				case subscription
			}

			public enum Include: String, Codable, CaseIterable {
				case subscription
			}

			public init(fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionLocalizations = fieldsSubscriptionLocalizations
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionLocalizations, forKey: "fields[subscriptionLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
