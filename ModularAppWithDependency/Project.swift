import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: "BasicModularApp",
                          platform: .iOS, 
                          externalDependencies: ["JGProgressHUD"],
                          additionalTargets: ["Numbers"])
