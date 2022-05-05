//
//  RoundedShape.swift
//  Twitter
//
//  Created by Gaurav Gupta on 04/05/22.
//

import SwiftUI
import UIKit

struct RoundedShape: Shape {
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 60, height: 60))
        
        return Path(path.cgPath)
    }
}
