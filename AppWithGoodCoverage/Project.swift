import ProjectDescription
import ProjectDescriptionHelpers

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "AppWithGoodCoverage",
                          platform: .iOS,
                          additionalTargets: [])
