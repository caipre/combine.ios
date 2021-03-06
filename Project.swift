import ProjectDescription

let base = SettingsDictionary()
    .automaticCodeSigning(devTeam: "B9YNE9L52C")
    .swiftVersion("5.3")
    .swiftCompilationMode(.wholemodule)

let infop: InfoPlist = .extendingDefault(with: [
    "UILaunchStoryboardName": "LaunchScreen",
    "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
    "UIApplicationSceneManifest": [
        "UIApplicationSupportsMultipleScenes": false,
        "UISceneConfigurations": [
            "UIWindowSceneSessionRoleApplication": [
                [
                    "UISceneConfigurationName": "Default Configuration",
                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate",
                ],
            ],
        ],
    ],
])

let project = Project(
    name: "Combine",
    settings: Settings(base: base),
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "co.nickp.combine",
            infoPlist: infop,
            sources: ["app/src/**"],
            resources: ["app/res/**"]
        ),
    ]
)
