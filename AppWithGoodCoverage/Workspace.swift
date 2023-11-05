import ProjectDescription

let workspace = Workspace(
    name: "BasicApp",
    projects: ["./**"],
    generationOptions: .options(
        autogeneratedWorkspaceSchemes:
                .enabled(codeCoverageMode: .all,
                         testingOptions: [.randomExecutionOrdering])
    )
)