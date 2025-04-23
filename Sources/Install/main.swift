import Foundation
import File

print("Installing Xcode theme...")

let themeURL = URL(fileURLWithPath: #file.replacingOccurrences(of: "Sources/Install/main.swift", with: "RefineUI.xccolortheme"))
let themeData = try Data(contentsOf: themeURL)

let xcodeFolder = try Folder(path: .home).subfolder(at: "Library/Developer/Xcode")
let userDataFolder = try xcodeFolder.createSubfolderIfNeeded(at: "UserData")
let themeFolder = try userDataFolder.createSubfolderIfNeeded(at: "FontAndColorThemes")

let themeFile = try themeFolder.createFile(at: "RefineUI.xccolortheme")
try themeFile.write(themeData)

print("RefineUI Theme successfully installed")