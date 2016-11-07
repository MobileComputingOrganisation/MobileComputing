//
//  DraggedImage.swift
//  Preschool Children Addition Calculator
//
//  Created by Mario Zammit on 18/10/2016.
//  Copyright © 2016 Mario Zammit. All rights reserved.
//

import UIKit

class DraggedImage: UIImageView {

    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //calculate the offset
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        // Constrain movement into parent bounds
        let midx = self.bounds.midX;
        
        center.x = max(midx, center.x)
        center.x = min((self.superview?.bounds.size.width)! - midx, center.x)
        
        let midy = self.bounds.midY;
        center.y = max(midy, center.y)
        center.y = min((self.superview?.bounds.size.height)! - midy, center.y)
        
        // Set new location
        self.center = center
    }
}
