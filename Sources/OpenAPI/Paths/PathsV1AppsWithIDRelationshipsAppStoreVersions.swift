// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Apps.WithID.Relationships {
	public var appStoreVersions: AppStoreVersions {
		AppStoreVersions(path: path + "/appStoreVersions")
	}

	public struct AppStoreVersions {
		/// Path: `/v1/apps/{id}/relationships/appStoreVersions`
		public let path: String
	}
}
