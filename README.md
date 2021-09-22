# CustomFramework

*POD INSTALL if needed*



1. Create .framework:
  - build the framework on simulator
  - build the framework on device(Any iOS Device)
  - Change Scheme to "Universal" and build as Any iOS Device or other should work also
  
Output: Products -> CustomFramework.framework (iosuniversal)

2. Create .xcframework
  - open terminal to root project directory
  - Run command:
    
    xcodebuild archive \
    -workspace CustomFramework.xcworkspace \
    -scheme CustomFramework \
    -archivePath ./archives/ios.xcarchive \
    -sdk iphoneos \
    -SKIP_INSTALL=NO \
    -BUILD_LIBRARIES_FOR_DISTRIBUTION=YES 

    xcodebuild archive \
    -workspace CustomFramework.xcworkspace \
    -arch x86_64 \
    -scheme CustomFramework \
    -archivePath ./archives/ios-sim.xcarchive \
    -sdk iphonesimulator \
    -SKIP_INSTALL=NO \
    -BUILD_LIBRARIES_FOR_DISTRIBUTION=YES 

    xcodebuild -create-xcframework \
    -framework ./archives/ios-sim.xcarchive/Products/Library/Frameworks/CustomFramework.framework \
    -framework ./archives/ios.xcarchive/Products/Library/Frameworks/CustomFramework.framework \
    -output ./builds/CustomFramework.xcframework
 
 Output: Root Directory -> builds -> CustomFramework.xcframework
 
 
 
 
 
