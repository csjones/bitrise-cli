//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0ProjectFileStorageUploadParams: APIModel {

    public var uploadFileName: String

    public var uploadFileSize: Int

    public var userEnvKey: String

    public init(uploadFileName: String, uploadFileSize: Int, userEnvKey: String) {
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
        self.userEnvKey = userEnvKey
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        uploadFileName = try container.decode("upload_file_name")
        uploadFileSize = try container.decode("upload_file_size")
        userEnvKey = try container.decode("user_env_key")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(uploadFileName, forKey: "upload_file_name")
        try container.encode(uploadFileSize, forKey: "upload_file_size")
        try container.encode(userEnvKey, forKey: "user_env_key")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0ProjectFileStorageUploadParams else { return false }
      guard self.uploadFileName == object.uploadFileName else { return false }
      guard self.uploadFileSize == object.uploadFileSize else { return false }
      guard self.userEnvKey == object.userEnvKey else { return false }
      return true
    }

    public static func == (lhs: V0ProjectFileStorageUploadParams, rhs: V0ProjectFileStorageUploadParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}