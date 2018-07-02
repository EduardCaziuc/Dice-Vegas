//
//  UIImageExtension.swift
//  Magic 8 Ball
//
//  Created by Eduard Caziuc on 02/07/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import UIKit

extension UIImageView {
    func wiggle() {
    
        UIView.animate(withDuration: 0.20, animations: {
            self.frame.origin.y -= 20; self.frame.origin.y -= 20}) { (finished) in
                UIView.animate(withDuration: 0.050, animations: {
                    self.frame.origin.x -= 20; self.frame.origin.x -= 20}) { (finished) in
                        UIView.setAnimationRepeatCount(6)
                        UIView.animate(withDuration: 0.050, animations: {
                            self.frame.origin.x += 20; self.frame.origin.x += 20})
                 { (finished) in
                
                UIView.animate(withDuration: 0.090, animations: {
                    self.frame.origin.y += 20; self.frame.origin.y += 20})
                
                        }
                }
    }
    }
}
