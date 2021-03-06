
//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API
import Foundation

struct V0AndroidKeystoreFileUploadArguments: ExpressibleByArgument {
    var data: V0AndroidKeystoreFileUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AndroidKeystoreFileUploadParams.self, from: Data(argument.utf8))
    }
}

struct V0AppConfigRequestArgument: ExpressibleByArgument {
    var data: V0AppConfigRequestParam?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AppConfigRequestParam.self, from: Data(argument.utf8))
    }
}

struct V0AppFinishArguments: ExpressibleByArgument {
    var data: V0AppFinishParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AppFinishParams.self, from: Data(argument.utf8))
    }
}

struct V0AppUploadArguments: ExpressibleByArgument {
    var data: V0AppUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AppUploadParams.self, from: Data(argument.utf8))
    }
}

struct V0AppWebhookCreateArguments: ExpressibleByArgument {
    var data: V0AppWebhookCreateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AppWebhookCreateParams.self, from: Data(argument.utf8))
    }
}

struct V0AppWebhookUpdateArguments: ExpressibleByArgument {
    var data: V0AppWebhookUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AppWebhookUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0ArtifactUpdateArguments: ExpressibleByArgument {
    var data: V0ArtifactUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0ArtifactUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0AvatarCandidateCreateBulkArguments: ExpressibleByArgument {
    var data: V0AvatarCandidateCreateBulkParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AvatarCandidateCreateBulkParams.self, from: Data(argument.utf8))
    }
}

struct V0AvatarCandidateCreateArguments: ExpressibleByArgument {
    var data: V0AvatarCandidateCreateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AvatarCandidateCreateParams.self, from: Data(argument.utf8))
    }
}

struct V0AvatarPromoteArguments: ExpressibleByArgument {
    var data: V0AvatarPromoteParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0AvatarPromoteParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildAbortArguments: ExpressibleByArgument {
    var data: V0BuildAbortParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildAbortParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildCertificateUpdateArguments: ExpressibleByArgument {
    var data: V0BuildCertificateUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildCertificateUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildCertificateUploadArguments: ExpressibleByArgument {
    var data: V0BuildCertificateUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildCertificateUploadParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildRequestUpdateArguments: ExpressibleByArgument {
    var data: V0BuildRequestUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildRequestUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildTriggerArguments: ExpressibleByArgument {
    var data: V0BuildTriggerParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildTriggerParams.self, from: Data(argument.utf8))
    }
}

struct V0BuildTriggerArgumentsBuildArguments: ExpressibleByArgument {
    var data: V0BuildTriggerParamsBuildParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0BuildTriggerParamsBuildParams.self, from: Data(argument.utf8))
    }
}

struct V0ProjectFileStorageDocumentUpdateArguments: ExpressibleByArgument {
    var data: V0ProjectFileStorageDocumentUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0ProjectFileStorageDocumentUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0ProjectFileStorageUploadArguments: ExpressibleByArgument {
    var data: V0ProjectFileStorageUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0ProjectFileStorageUploadParams.self, from: Data(argument.utf8))
    }
}

struct V0ProvProfileDocumentUpdateArguments: ExpressibleByArgument {
    var data: V0ProvProfileDocumentUpdateParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0ProvProfileDocumentUpdateParams.self, from: Data(argument.utf8))
    }
}

struct V0ProvisionProfileUploadArguments: ExpressibleByArgument {
    var data: V0ProvisionProfileUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0ProvisionProfileUploadParams.self, from: Data(argument.utf8))
    }
}

struct V0SSHKeyUploadArguments: ExpressibleByArgument {
    var data: V0SSHKeyUploadParams?
    init?(argument: String) {
        self.data = try? JSONDecoder().decode(V0SSHKeyUploadParams.self, from: Data(argument.utf8))
    }
}

