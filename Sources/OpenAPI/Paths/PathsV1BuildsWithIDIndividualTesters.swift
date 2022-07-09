// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Builds.WithID {
	public var individualTesters: IndividualTesters {
		IndividualTesters(path: path + "/individualTesters")
	}

	public struct IndividualTesters {
		/// Path: `/v1/builds/{id}/individualTesters`
		public let path: String

		public func get(fieldsBetaTesters: [FieldsBetaTesters]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaTestersResponse> {
			.get(path, query: makeGetQuery(fieldsBetaTesters, limit))
		}

		private func makeGetQuery(_ fieldsBetaTesters: [FieldsBetaTesters]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsBetaTesters: String, Codable, CaseIterable {
			case apps
			case betaGroups
			case builds
			case email
			case firstName
			case inviteType
			case lastName
		}
	}
}
