//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Create a temporary pre-signed upload URL (expires in 10 minutes) for the generic project file and upload it to AWS with a simple `curl` request. To complete the uploading process and view your files on the Code Signing tab of your app, continue with the [POST /apps/{app-slug}/generic-project-files/{generic-project-file-slug}/uploaded](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-confirm) endpoint. Read more in our [Creating and uploading files to Generic File Storage](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#creating-and-uploading-files-to-generic-file-storage) guide.
struct GenericProjectFilesCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "GenericProjectFilesCreate",
        abstract: "Create a generic project file"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String

    func run() throws {
        let request = API.GenericProjectFile.GenericProjectFilesCreate.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}