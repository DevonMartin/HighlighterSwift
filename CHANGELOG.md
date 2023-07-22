## Change Log

**Editor:** Devon Martin  
**Date of Revision:** July 22, 2023  
**Reason for Revision:**

The revision has been implemented to resolve a bug that caused the package to fail during compilation for iOS. The import of UIKit has been modified from being exclusive to MacOS to being solely for iOS. This change ensures the package's compatibility with iOS.

Additionally, an extension to the UIColor class has been integrated to support testing scenarios that utilize NSColor functions. This ensures that these tests can be conducted efficiently within an iOS environment.

This modification was crucial to extend the use of the package and to optimize its performance on the iOS platform.

## Revision Details

- **UIKit Import:** The UIKit was originally imported exclusively for MacOS. To improve compatibility specifically for iOS, the import has now been made exclusive to iOS.

- **UIColor Extension:** To ensure that tests using NSColor methods can be conducted in an iOS environment, I have added a UIColor extension. This change guarantees that such tests continue to function as intended on iOS.

## Impact

The current revision extends the package's compilation capability to the iOS platform, enhancing its versatility and efficacy. These changes aim to refine the user experience, particularly for iOS developers, by eliminating prior compile-time errors and providing consistency in testing environments.
