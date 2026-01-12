import ProjectDescription

let project = Project(
    name: "SSimpleIME",
    settings: .settings(
        base: [
            "SWIFT_VERSION": "6.0",
            "CURRENT_PROJECT_VERSION": "1",
            "MARKETING_VERSION": "1.0",
            "ENABLE_USER_SCRIPT_SANDBOXING": "YES",
            "CODE_SIGN_STYLE": "Automatic",
            "DEVELOPMENT_TEAM": "P5WD874MH2",
            //"LIBRARY_SEARCH_PATHS": ["$(inherited)", "$(PROJECT_DIR)/lib/mlc_llm"],
            //"OTHER_LDFLAGS": [
            //    "-ObjC"
            //    //    "-Wl,-all_load",
            //    //    "-lmodel_iphone", "-lmlc_llm", "-ltvm_runtime", "-ltokenizers_cpp",
            //    //    "-lsentencepiece", "-ltokenizers_c",
            //],
        ]
    ),
    targets: [
        .target(
            name: "SSimpleIME",
            destinations: .macOS,
            product: .app,
            bundleId: "com.skonuniverse.SSimpleIME",
            infoPlist: "info.plist",
            buildableFolders: [
                "SSimpleIME/Sources",
                "SSimpleIME/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "SSimpleIMETests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.skonuniverse.SSimpleIMETests",
            infoPlist: .default,
            buildableFolders: [
                "SSimpleIME/Tests"
            ],
            dependencies: [.target(name: "SSimpleIME")]
        ),
    ]
)
