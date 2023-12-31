import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
    /// Helper function to create the Project for this ExampleApp
    public static func app(name: String, 
                           platform: Platform,
                           additionalTargets: [String]) -> Project {
        var targets = makeAppTargets(name: name,
                                     platform: platform,
                                     dependencies: additionalTargets.map { TargetDependency.target(name: $0) })
        targets += additionalTargets.flatMap({ makeFrameworkTargets(name: $0, platform: platform) })
        return Project(name: name,
                       organizationName: "tuist.io",
                       options: makeOptionsWithCodeCoverageEnabled(),
                       targets: targets,
                       resourceSynthesizers: [])
    }
    
    // MARK: - Private
    
    private static func makeOptionsWithCodeCoverageEnabled() -> Options {
        let automaticSchemesOptions = Options.AutomaticSchemesOptions.enabled(
            targetSchemesGrouping: .byNameSuffix(build: ["Implementation",
                                                         "Interface",
                                                         "Mocks",
                                                         "Testing"],
                                                 test: ["Tests",
                                                        "IntegrationTests",
                                                        "UITests",
                                                        "SnapshotTests"],
                                                 run: ["App",
                                                       "Example"]),
            codeCoverageEnabled: true,
            testingOptions: [.randomExecutionOrdering]
        )
        
        return Project.Options.options(automaticSchemesOptions: automaticSchemesOptions,
                                       developmentRegion: nil,
                                       disableBundleAccessors: false,
                                       disableShowEnvironmentVarsInScriptPhases: false,
                                       disableSynthesizedResourceAccessors: false,
                                       textSettings: Options.TextSettings.textSettings(),
                                       xcodeProjectName: nil)
    }
    
    /// Helper function to create a framework target and an associated unit test target
    private static func makeFrameworkTargets(name: String, platform: Platform) -> [Target] {
        let sources = Target(name: name,
                             platform: platform,
                             product: .framework,
                             bundleId: "io.tuist.\(name)",
                             infoPlist: .default,
                             sources: ["Targets/\(name)/Sources/**"],
                             resources: [],
                             dependencies: [])
        let tests = Target(name: "\(name)Tests",
                           platform: platform,
                           product: .unitTests,
                           bundleId: "io.tuist.\(name)Tests",
                           infoPlist: .default,
                           sources: ["Targets/\(name)/Tests/**"],
                           resources: [],
                           dependencies: [.target(name: name)])
        return [sources, tests]
    }
    
    /// Helper function to create the application target and the unit test target.
    private static func makeAppTargets(name: String, platform: Platform, dependencies: [TargetDependency]) -> [Target] {
        let platform: Platform = platform
        let infoPlist: [String: Plist.Value] = [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UIMainStoryboardFile": "",
            "UILaunchStoryboardName": "LaunchScreen"
        ]
        
        let mainTarget = Target(
            name: name,
            platform: platform,
            product: .app,
            bundleId: "io.tuist.\(name)",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Targets/\(name)/Sources/**"],
            resources: ["Targets/\(name)/Resources/**"],
            dependencies: dependencies
        )
        
        let testTarget = Target(
            name: "\(name)Tests",
            platform: platform,
            product: .unitTests,
            bundleId: "io.tuist.\(name)Tests",
            infoPlist: .default,
            sources: ["Targets/\(name)/Tests/**"],
            dependencies: [
                .target(name: "\(name)")
            ])
        return [mainTarget, testTarget]
    }
}
