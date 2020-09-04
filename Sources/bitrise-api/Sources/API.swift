//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Official REST API for Bitrise.io */
public struct API {

    /// Whether to discard any errors when decoding optional properties
    public static var safeOptionalDecoding = false

    /// Whether to remove invalid elements instead of throwing when decoding arrays
    public static var safeArrayDecoding = false

    /// Used to encode Dates when uses as string params
    public static var dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ")

    public static let version = "0.1"

    public enum Activity {}
    public enum Addons {}
    public enum AndroidKeystoreFile {}
    public enum AppSetup {}
    public enum AppleApiCredentials {}
    public enum Application {}
    public enum AvatarCandidate {}
    public enum BuildArtifact {}
    public enum BuildCertificate {}
    public enum BuildRequest {}
    public enum Builds {}
    public enum GenericProjectFile {}
    public enum Organizations {}
    public enum OutgoingWebhook {}
    public enum ProvisioningProfile {}
    public enum TestDevices {}
    public enum User {}
    public enum WebhookDeliveryItem {}

    public enum Server {

        public static let main = "https://api.bitrise.io/v0.1"
    }
}
