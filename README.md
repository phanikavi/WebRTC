# Universal WebRTC binaries for iOS

This is WebRTC framework in XCFramework format for iOS and macOS.


## Installation


### Swift Package Manager 

Requires Swift 5.3 / Xcode 12+.

Add this repository https://github.com/ATOS-VIRTUAL-CARE/WebRTC.git via Swift Package Manager  

Alternatively, to integrate via a Package.swift manifest instead of Xcode, you can add WebRTC to your dependencies array of your package with

```swift
dependencies: [
    .package(url: "https://github.com/ATOS-VIRTUAL-CARE/WebRTC.git", .upToNextMajor(from: "90.0.0"))
]
```

Then add a new run script phase script to your app’s target

```shellscript
find "${CODESIGNING_FOLDER_PATH}" -name '*.framework' -print0 | while read -d $'\0' framework 
do 
    codesign --force --deep --sign "${EXPANDED_CODE_SIGN_IDENTITY}" --preserve-metadata=identifier,entitlements --timestamp=none "${framework}" 
done
```
