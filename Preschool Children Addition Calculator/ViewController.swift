//
//  ViewController.swift
//  Preschool Children Addition Calculator
//
//  Created by Mario Zammit on 16/10/2016.
//  Copyright © 2016 Mario Zammit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //obtain screen's dimension and store them in variables
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    //create variable to store answer chosen by user
    var chosenAnswer:String?
    
    //create variables to hold two numbers to be added
    var num1:Int = 0
    var num2:Int = 0
    
    //variable holds the correct answer
    var correctAnswer:Int = 0
    
    //declare grey background view
    @IBOutlet weak var greyBackground: UIView!
    
    /* declare buttons so that they could be
     * positioned programmatically so that 
     * they will be displayed on every iphone correctly
     */
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    
    //declare labels which will show the equation
    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblPlusSign: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var lblEqualsSign: UILabel!
    @IBOutlet weak var lblQuestionMark: UILabel!
    
    //link apples and plate images
    @IBOutlet weak var apple0: UIImageView!
    @IBOutlet weak var apple1: UIImageView!
    @IBOutlet weak var apple2: UIImageView!
    @IBOutlet weak var apple3: UIImageView!
    @IBOutlet weak var apple4: UIImageView!
    @IBOutlet weak var apple5: UIImageView!
    @IBOutlet weak var apple6: UIImageView!
    @IBOutlet weak var apple7: UIImageView!
    @IBOutlet weak var apple8: UIImageView!
    @IBOutlet weak var plate: UIImageView!
    
    /* 
    * position everything on the IPhone's screen after the view
    * is loaded. It will adapt the elements so that appear
    * correctly on every IPhone.
    */
    func buildFirstScreen(){
        //set dimensions and location of grey background
        self.greyBackground.frame = CGRect(x: 0, y:0, width: screenWidth, height: screenHeight*0.4)
        //*****************position number buttons*****************
        //position button zero
        self.btnZero.frame = CGRect(x: screenWidth * 0.04, y:screenHeight * 0.03, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button one
        self.btnOne.frame = CGRect(x: screenWidth * 0.23, y:screenHeight * 0.03, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button two
        self.btnTwo.frame = CGRect(x: screenWidth * 0.42, y:screenHeight * 0.03, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button three
        self.btnThree.frame = CGRect(x: screenWidth * 0.61, y:screenHeight * 0.03, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button four
        self.btnFour.frame = CGRect(x: screenWidth * 0.8, y:screenHeight * 0.03, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button five
        self.btnFive.frame = CGRect(x: screenWidth * 0.03, y:screenHeight * 0.16, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button six
        self.btnSix.frame = CGRect(x: screenWidth * 0.23, y:screenHeight * 0.16, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button seven
        self.btnSeven.frame = CGRect(x: screenWidth * 0.42, y:screenHeight * 0.16, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button eight
        self.btnEight.frame = CGRect(x: screenWidth * 0.61, y:screenHeight * 0.16, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button nine
        self.btnNine.frame = CGRect(x: screenWidth * 0.8, y:screenHeight * 0.16, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //*****************position labels********************
        //position num1 label and assign it the random number
        self.lblNum1.frame = CGRect(x: screenWidth * 0.04, y:screenHeight * 0.29, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position plus sign label
        self.lblPlusSign.frame = CGRect(x: screenWidth * 0.23, y:screenHeight * 0.29, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position num2 label and assign it the random number
        self.lblNum2.frame = CGRect(x: screenWidth * 0.42, y:screenHeight * 0.29, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position equals sign label
        self.lblEqualsSign.frame = CGRect(x: screenWidth * 0.61, y:screenHeight * 0.29, width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position question mark sign label
        self.lblQuestionMark.frame = CGRect(x: screenWidth * 0.8, y:screenHeight * 0.29, width: screenWidth * 0.15, height: screenHeight * 0.1)
        //****************position plate and apple images************
        //position plage image
        self.plate.frame = CGRect(x:screenWidth * 0.05,y: screenHeight * 0.7, width: screenWidth * 0.9,height: screenHeight * 0.4)
        
        //position apple0 image
        self.apple0.frame = CGRect(x:screenWidth * 0.2, y: screenHeight * 0.8, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple1 image
        self.apple1.frame = CGRect(x:screenWidth * 0.3, y: screenHeight * 0.75, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple2 image
        self.apple2.frame = CGRect(x:screenWidth * 0.4, y: screenHeight * 0.75, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple3 image
        self.apple3.frame = CGRect(x:screenWidth * 0.5, y: screenHeight * 0.75, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple4 image
        self.apple4.frame = CGRect(x:screenWidth * 0.6, y: screenHeight * 0.75, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple5 image
        self.apple5.frame = CGRect(x:screenWidth * 0.7, y: screenHeight * 0.8, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple6 image
        self.apple6.frame = CGRect(x:screenWidth * 0.55, y: screenHeight * 0.82, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple7 image
        self.apple7.frame = CGRect(x:screenWidth * 0.42, y: screenHeight * 0.82, width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple8 image
        self.apple8.frame = CGRect(x:screenWidth * 0.3, y: screenHeight * 0.82, width: screenWidth * 0.15, height:screenHeight * 0.15)
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        //retrieve the number from the image clicked
        let userAnswer = Int(sender.currentTitle!)
        if (userAnswer == correctAnswer){
            //insert functionality to show correct screen...........
        }
    }

    //runs every time the view appears
    override func viewDidAppear(_ animated: Bool) {
        /* when calculator screen appears generate two random
         * numbers between 0 and 4 and store them in variables
         * num1 and num2
         */
        num1 = Int(arc4random_uniform(5))
        num2 = Int(arc4random_uniform(5))
        
        lblNum1.text = String(num1)
        lblNum2.text = String(num2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         * call the buildFirstScreen function which positions
         * everything on the IPhone's screen after the view
         * is loaded
         */
        buildFirstScreen()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

