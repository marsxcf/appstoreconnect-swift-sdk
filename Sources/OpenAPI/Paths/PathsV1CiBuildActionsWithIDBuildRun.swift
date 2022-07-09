// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiBuildActions.WithID {
	public var buildRun: BuildRun {
		BuildRun(path: path + "/buildRun")
	}

	public struct BuildRun {
		/// Path: `/v1/ciBuildActions/{id}/buildRun`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiBuildRunResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsScmGitReferences: [FieldsScmGitReferences]?
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var fieldsCiWorkflows: [FieldsCiWorkflows]?
			public var fieldsScmPullRequests: [FieldsScmPullRequests]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var limitBuilds: Int?
			public var include: [Include]?

			public enum FieldsScmGitReferences: String, Codable, CaseIterable {
				case canonicalName
				case isDeleted
				case kind
				case name
				case repository
			}

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case actions
				case buildRun
				case builds
				case cancelReason
				case clean
				case completionStatus
				case createdDate
				case destinationBranch
				case destinationCommit
				case executionProgress
				case finishedDate
				case isPullRequestBuild
				case issueCounts
				case number
				case product
				case pullRequest
				case sourceBranchOrTag
				case sourceCommit
				case startReason
				case startedDate
				case workflow
			}

			public enum FieldsCiWorkflows: String, Codable, CaseIterable {
				case actions
				case branchStartCondition
				case buildRuns
				case clean
				case containerFilePath
				case description
				case isEnabled
				case isLockedForEditing
				case lastModifiedDate
				case macOsVersion
				case name
				case product
				case pullRequestStartCondition
				case repository
				case scheduledStartCondition
				case tagStartCondition
				case xcodeVersion
			}

			public enum FieldsScmPullRequests: String, Codable, CaseIterable {
				case destinationBranchName
				case destinationRepositoryName
				case destinationRepositoryOwner
				case isClosed
				case isCrossRepository
				case number
				case repository
				case sourceBranchName
				case sourceRepositoryName
				case sourceRepositoryOwner
				case title
				case webURL = "webUrl"
			}

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case additionalRepositories
				case app
				case buildRuns
				case bundleID = "bundleId"
				case createdDate
				case name
				case primaryRepositories
				case productType
				case workflows
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case builds
				case destinationBranch
				case product
				case pullRequest
				case sourceBranchOrTag
				case workflow
			}

			public init(fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBuilds: Int? = nil, include: [Include]? = nil) {
				self.fieldsScmGitReferences = fieldsScmGitReferences
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.fieldsCiWorkflows = fieldsCiWorkflows
				self.fieldsScmPullRequests = fieldsScmPullRequests
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsBuilds = fieldsBuilds
				self.limitBuilds = limitBuilds
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
				encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
