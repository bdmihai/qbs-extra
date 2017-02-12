import qbs

Module {
    // dependencies
    Depends { name: "cpp" }

    // absolute path to the boost library
    property string rootPath: ""
    PropertyOptions {
        name: "rootPath"
        description: "The root path of the boost instalation"
    }

    // include paths for the library
    cpp.systemIncludePaths: [ rootPath ]

    // library paths for the library
    cpp.libraryPaths: [ rootPath + "/stage/lib" ]
}
