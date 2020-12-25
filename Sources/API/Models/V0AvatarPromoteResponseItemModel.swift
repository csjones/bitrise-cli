//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AvatarPromoteResponseItemModel: APIModel {

    public var isCandidate: Bool?

    public var slug: String?

    public var uploadFileName: String?

    public var uploadFileSize: Int?

    public init(isCandidate: Bool? = nil, slug: String? = nil, uploadFileName: String? = nil, uploadFileSize: Int? = nil) {
        self.isCandidate = isCandidate
        self.slug = slug
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isCandidate = try container.decodeIfPresent("is_candidate")
        slug = try container.decodeIfPresent("slug")
        uploadFileName = try container.decodeIfPresent("upload_file_name")
        uploadFileSize = try container.decodeIfPresent("upload_file_size")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isCandidate, forKey: "is_candidate")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(uploadFileName, forKey: "upload_file_name")
        try container.encodeIfPresent(uploadFileSize, forKey: "upload_file_size")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AvatarPromoteResponseItemModel else { return false }
      guard self.isCandidate == object.isCandidate else { return false }
      guard self.slug == object.slug else { return false }
      guard self.uploadFileName == object.uploadFileName else { return false }
      guard self.uploadFileSize == object.uploadFileSize else { return false }
      return true
    }

    public static func == (lhs: V0AvatarPromoteResponseItemModel, rhs: V0AvatarPromoteResponseItemModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}