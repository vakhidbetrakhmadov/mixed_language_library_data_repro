load("@build_bazel_rules_swift//mixed_language:mixed_language_library.bzl", "mixed_language_library")
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

mixed_language_library(
    name = "Sources",
    swift_srcs = [
        "Sources/Dummy.swift",
    ],
    clang_srcs = [
        "Sources/AppDelegate.h",
        "Sources/AppDelegate.m",
        "Sources/main.m",
    ],
    data = [
        "Resources/foo.json",
        "Resources/Launch.storyboard",
        "Resources/Main.storyboard",
    ],
    enable_modules = True,
    tags = ["manual"],
)

apple_bundle_version(
    name = "HelloWorldVersion",
    build_version = "1.0",
)

filegroup(
    name = "PhoneAppIcon.xcassets",
    srcs = glob(["Resources/PhoneAppIcon.xcassets/**"]),
)

ios_application(
    name = "HelloWorld",
    app_icons = [":PhoneAppIcon.xcassets"],
    bundle_id = "com.example.hello-world",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    minimum_os_version = "11.0",
    version = ":HelloWorldVersion",
    deps = [":Sources"],
)