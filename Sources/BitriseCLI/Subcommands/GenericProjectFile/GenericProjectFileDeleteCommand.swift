//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Delete an app's generic project file. You can fetch an app's generic project file slug if you first list all the uploaded files with the [GET /apps/{app-slug}/generic-project-files](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-list) endpoint. Read more in our [Deleting a file](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#deleting-a-file) guide.
struct GenericProjectFileDeleteCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "GenericProjectFileDelete",
        abstract: "Delete a generic project file"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var genericProjectFileSlug: String

    func run() throws {
        let request = API.GenericProjectFile.GenericProjectFileDelete.Request(appSlug: appSlug, genericProjectFileSlug: genericProjectFileSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}
