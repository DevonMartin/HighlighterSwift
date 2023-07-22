/*
 *  Highlighter.swift
 *  Copyright 2023, Tony Smith
 *  Copyright 2016, Juan-Pablo Illanes
 *
 *  Licence: MIT
 */


import Foundation

/**
 Basic imports and typealiases.
 */
#if os(OSX)
    import AppKit
    public typealias HRColor = NSColor
    public typealias HRFont  = NSFont
#elseif os(iOS)
    import UIKit
    public typealias HRColor = UIColor
    public typealias HRFont  = UIFont
#endif


/**
 Set type aliases according to which Swift is being run and,
 in the second case, if we're running on iOS

 NOTE This is probably unnecessary now since the Swift Package
      mandates Swift 5.3
 */
#if swift(>=4.2)
    public typealias AttributedStringKey = NSAttributedString.Key
#else
    public typealias AttributedStringKey = NSAttributedStringKey
#endif

#if swift(>=4.2) && os(iOS)
    public typealias TextStorageEditActions = NSTextStorage.EditActions
#else
    public typealias TextStorageEditActions = NSTextStorageEditActions
#endif

#if os(iOS)
extension UIColor {
    
    var redComponent: CGFloat {
        var r: CGFloat = 0
        getRed(&r, green: nil, blue: nil, alpha: nil)
        return r
    }
    
    var greenComponent: CGFloat {
        var g: CGFloat = 0
        getRed(nil, green: &g, blue: nil, alpha: nil)
        return g
    }
    
    var blueComponent: CGFloat {
        var b: CGFloat = 0
        getRed(nil, green: nil, blue: &b, alpha: nil)
        return b
    }
    
    var alphaComponent: CGFloat {
        var a: CGFloat = 0
        getRed(nil, green: nil, blue: nil, alpha: &a)
        return a
    }
}
#endif
