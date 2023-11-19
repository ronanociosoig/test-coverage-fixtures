import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: "ModularAppWithDependency",
                          platform: .iOS,
                          externalDependencies: ["JGProgressHUD"],
                          additionalTargets: ["Numbers"])
