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
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
    }
    
    //when user stops touching the element
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /* 
         * if apples are on the grey background return to start location because
         * touch does not work on apples in the grey bacground view
         */
        if (center.y < 0 ){
            self.center = startLocation!
        }
    }
}
