# MoonPhases app
Example app intended to show basic concepts about app clips.

## Steps for creating basic app clip:
Inferred rom: [Explore app clips - WWDC 2020 - Videos - Apple Developer](https://developer.apple.com/videos/play/wwdc2020/10174)

1. Add a new app clip target.
2. Build and run the app clip. You should see a hello world
3. Create a new shared assets folder with common assets.
4. Add only needed source code to app clip target.
5. Change  base view on app clip to the desired one
6. Test.

## Linking your app clip:
Inferred from: [Configure and link your app clips - WWDC 2020 - Videos - Apple Developer](https://developer.apple.com/videos/play/wwdc2020/10146)

1. Add code to obtain URL when user launches it
2. Add associated domains capability on app clip
3. Add the URL using this format appclips:yourwebsite.domain
4. To debug using Xcode select edit scheme for the app clip target 
5. Go to Run (debug)
6. Select  arguments tab and search for _XCAppClipURL
7. In that field you can put test URLs
8. Add code to route app clip based on URL

## Tutorial Support:
Set of links used to create this presentation that can be useful later.

### Must see apple resources to start:
[Explore app clips - WWDC 2020 - Videos - Apple Developer](https://developer.apple.com/videos/play/wwdc2020/10174)

[Configure and link your app clips - WWDC 2020 - Videos - Apple Developer](https://developer.apple.com/videos/play/wwdc2020/10146)

[Apple Developer Documentation](https://developer.apple.com/documentation/app_clips/creating_an_app_clip_with_xcode)

### Universal Links and Deeplinks Context:
[IOS Deep linking: URL Scheme vs Universal Links | by Juan F. Caracciolo | Wolox | Medium](https://medium.com/wolox/ios-deep-linking-url-scheme-vs-universal-links-50abd3802f97)

[Universal Links: Make the Connection | raywenderlich.com](https://www.raywenderlich.com/6080-universal-links-make-the-connection)

[Deep Linking in iOS | iOS Tutorial](https://ios.programmingpedia.net/en/tutorial/5173/deep-linking-in-ios)

### Summary and overview of AppClips:
[Configure and link your app clips | WWDC Notes](https://wwdcnotes.com/notes/wwdc20/10146/)

[How to get started with App Clips in iOS 14 | WWDC by Sundell & Friends](https://wwdcbysundell.com/2020/a-first-look-at-app-clips-in-ios-14/)

### Ultimate Guide
[Apple App Clips - A Definitive Guide for Developers | AppsFlyer](https://www.appsflyer.com/resources/others/apple-app-clips/)
