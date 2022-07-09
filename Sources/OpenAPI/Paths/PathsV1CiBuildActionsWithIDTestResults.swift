// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiBuildActions.WithID {
	public var testResults: TestResults {
		TestResults(path: path + "/testResults")
	}

	public struct TestResults {
		/// Path: `/v1/ciBuildActions/{id}/testResults`
		public let path: String

		public func get(fieldsCiTestResults: [FieldsCiTestResults]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.CiTestResultsResponse> {
			.get(path, query: makeGetQuery(fieldsCiTestResults, limit))
		}

		private func makeGetQuery(_ fieldsCiTestResults: [FieldsCiTestResults]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsCiTestResults, forKey: "fields[ciTestResults]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsCiTestResults: String, Codable, CaseIterable {
			case className
			case destinationTestResults
			case fileSource
			case message
			case name
			case status
		}
	}
}
