//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AvatarCandidateCreateParams: APIModel {

    public var filename: String

    public var filesize: Int

    public init(filename: String, filesize: Int) {
        self.filename = filename
        self.filesize = filesize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        filename = try container.decode("filename")
        filesize = try container.decode("filesize")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(filename, forKey: "filename")
        try container.encode(filesize, forKey: "filesize")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AvatarCandidateCreateParams else { return false }
      guard self.filename == object.filename else { return false }
      guard self.filesize == object.filesize else { return false }
      return true
    }

    public static func == (lhs: V0AvatarCandidateCreateParams, rhs: V0AvatarCandidateCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}