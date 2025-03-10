// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperiences {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipDefaultExperiences/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipDefaultExperiences-get_instance")
		}

		public struct GetParameters {
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var include: [Include]?
			public var fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var limitAppClipDefaultExperienceLocalizations: Int?

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public enum Include: String, Codable, CaseIterable {
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case releaseWithAppStoreVersion
			}

			public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case invocationURLs = "invocationUrls"
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
				case locale
				case subtitle
			}

			public init(fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, include: [Include]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil) {
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.include = include
				self.fieldsAppClipAppStoreReviewDetails = fieldsAppClipAppStoreReviewDetails
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.limitAppClipDefaultExperienceLocalizations = limitAppClipDefaultExperienceLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(limitAppClipDefaultExperienceLocalizations, forKey: "limit[appClipDefaultExperienceLocalizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppClipDefaultExperienceUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appClipDefaultExperiences-update_instance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "appClipDefaultExperiences-delete_instance")
		}
	}
}
