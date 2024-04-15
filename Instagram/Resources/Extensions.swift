//
//  Extensions.swift
//  Instagram
//
//  Created by Cemalhan Alptekin on 2.04.2024.
//

import Foundation
import UIKit

extension UIView {
    public var width: CGFloat {
        return frame.size.width
    }
}

extension UIView {
    public var height: CGFloat {
        return frame.size.height
    }
}


extension UIView {
    public var top: CGFloat {
        return frame.origin.y
    }
}


extension UIView {
    public var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
}


extension UIView {
    public var left: CGFloat {
        return frame.origin.x
    }
}

extension UIView {
    public var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
}

extension String {
        func safeDatabaseKey() -> String  {
            return self.replacingOccurrences(of: "@", with: "-").replacingOccurrences(of: ".", with: "-")
    }
}
