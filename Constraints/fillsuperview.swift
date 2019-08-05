//
//  fillsuperview.swift
//  Constraints
//
//  Created by Great Okonkwo on 8/4/19.
//  Copyright © 2019 Great  Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    ///This extension basically adds a method called fillSuperview().This method abstracts away the implementation of adding a subview that fills its superview. Some examples of this code being used is: when adding subviews that are special effects or animations, image views, and many more. Basically any view that needs to completey take up the space of its superview. You are to call this method after you have added the calling view to its superview usig the addSubview(UIView) method.
    open func fillSuperview(){
        guard let superview =  self.superview else {print("No Superview for this view.\nMake sure to add a superview before trying to call this method.", self.description);return}
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
    }
}

