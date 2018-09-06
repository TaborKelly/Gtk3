import PackageDescription

let package = Package(
    name: "Gtk3",
    dependencies: [
        .Package(url: "git@github.com:TaborKelly/CGtk3.git", majorVersion: 0, minor: 1)
    ]
)
