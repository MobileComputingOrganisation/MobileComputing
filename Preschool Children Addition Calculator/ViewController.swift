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
    
    //**************variables for first view********
    //create variable to store answer chosen by user
    var chosenAnswer:String?
    
    //create variables to hold two numbers to be added
    var num1:Int = 0
    var num2:Int = 0
    
    //variable holds the correct answer
    var correctAnswer:Int = 0
    
    /* declare buttons so that they could be
     * positioned programmatically so that 
     * they will be displayed on every iphone correctly
     */
    //declare grey background view
    @IBOutlet weak var greyBackground: UIView!
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
    @IBOutlet weak var EquationView: UIView!
    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblPlusSign: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var lblEqualsSign: UILabel!
    @IBOutlet weak var lblQuestionMark: UILabel!
    @IBOutlet weak var lblQuestionRed: UILabel!
    @IBOutlet weak var lblCorrectAnswer: UILabel!
    
    //link apples and plate images
    @IBOutlet weak var PlateView: UIView!
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
    
    //**************variables for second view********
    @IBOutlet weak var CorrectView: UIView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var thumbsUp: UIImageView!
    @IBOutlet weak var btnPlayAgain: UIButton!
    
    /* 
    * position everything on the IPhone's screen after the view
    * is loaded. It will adapt the elements so that appear
    * correctly on every IPhone.
    */
    func buildFirstView(){
        //set dimensions and location of grey background
        self.greyBackground.frame = CGRect(x: 0, y:0, width: screenWidth, height: screenHeight * 0.4)
        //*****************position number buttons*****************
        //position button zero
        self.btnZero.frame = CGRect(x: screenWidth * 0.04, y:screenHeight * 0.03,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button one
        self.btnOne.frame = CGRect(x: screenWidth * 0.23, y:screenHeight * 0.03,
                                   width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button two
        self.btnTwo.frame = CGRect(x: screenWidth * 0.42, y:screenHeight * 0.03,
                                   width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button three
        self.btnThree.frame = CGRect(x: screenWidth * 0.61, y:screenHeight * 0.03,
                                     width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button four
        self.btnFour.frame = CGRect(x: screenWidth * 0.8, y:screenHeight * 0.03,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button five
        self.btnFive.frame = CGRect(x: screenWidth * 0.03, y:screenHeight * 0.16,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button six
        self.btnSix.frame = CGRect(x: screenWidth * 0.23, y:screenHeight * 0.16,
                                   width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button seven
        self.btnSeven.frame = CGRect(x: screenWidth * 0.42, y:screenHeight * 0.16,
                                     width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button eight
        self.btnEight.frame = CGRect(x: screenWidth * 0.61, y:screenHeight * 0.16,
                                     width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position button nine
        self.btnNine.frame = CGRect(x: screenWidth * 0.8, y:screenHeight * 0.16,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //*****************position labels********************
        self.EquationView.frame = CGRect(x:0, y:screenHeight * 0.29,
                                         width: screenWidth, height: screenHeight * 0.1)
        
        
        //position num1 label and assign it the random number
        self.lblNum1.frame = CGRect(x: screenWidth * 0.04, y:0,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position plus sign label
        self.lblPlusSign.frame = CGRect(x: screenWidth * 0.23, y:0,
                                        width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position num2 label and assign it the random number
        self.lblNum2.frame = CGRect(x: screenWidth * 0.42, y:0,
                                    width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position equals sign label
        self.lblEqualsSign.frame = CGRect(x: screenWidth * 0.61, y:0,
                                          width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position question mark sign label
        self.lblQuestionMark.frame = CGRect(x: screenWidth * 0.8, y:0,
                                            width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position red question mark sign label
        self.lblQuestionRed.frame = CGRect(x: screenWidth * 0.8, y:0,
                                           width: screenWidth * 0.15, height: screenHeight * 0.1)
        
        //position correct sign label
        self.lblCorrectAnswer.frame = CGRect(x: screenWidth * 0.8, y:0,
                                             width: screenWidth * 0.15, height: screenHeight * 0.1)
        lblCorrectAnswer.isHidden = true
        
        //****************position plate and apple images************
        //position and dimensions of plate view
        self.PlateView.frame = CGRect(x: 0, y:screenHeight * 0.4,
                                      width: screenWidth, height: screenHeight * 0.6)
        
        //get height of PlateView
        let PViewHeight = self.PlateView.bounds.height
        //position plate image
        self.plate.frame = CGRect(x:screenWidth * 0.05,y: PViewHeight * 0.44,
                                  width: screenWidth * 0.9,height: screenHeight * 0.4)
        
        //position apple0 image
        self.apple0.frame = CGRect(x:screenWidth * 0.2, y: PViewHeight * 0.6,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple1 image
        self.apple1.frame = CGRect(x:screenWidth * 0.3, y: PViewHeight * 0.55,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple2 image
        self.apple2.frame = CGRect(x:screenWidth * 0.4, y: PViewHeight * 0.55,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple3 image
        self.apple3.frame = CGRect(x:screenWidth * 0.5, y: PViewHeight * 0.55,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple4 image
        self.apple4.frame = CGRect(x:screenWidth * 0.6, y: PViewHeight * 0.55,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple5 image
        self.apple5.frame = CGRect(x:screenWidth * 0.7, y: PViewHeight * 0.6,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple6 image
        self.apple6.frame = CGRect(x:screenWidth * 0.55, y: PViewHeight * 0.62,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple7 image
        self.apple7.frame = CGRect(x:screenWidth * 0.42, y: PViewHeight * 0.62,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
        
        //position apple8 image
        self.apple8.frame = CGRect(x:screenWidth * 0.3, y: PViewHeight * 0.62,
                                   width: screenWidth * 0.15, height:screenHeight * 0.15)
    }

    //********position all elements in second view**********
    func buildCorrectView(){
        //position correct view
        self.CorrectView.frame = CGRect(x:0,y:0, width: screenWidth, height: screenHeight)
        //position star1 image
        self.star1.frame = CGRect(x:screenWidth * 0.2, y: screenHeight * 0.1,
                                  width: screenWidth * 0.1, height:screenHeight * 0.1)
        
        //position star2 image
        self.star2.frame = CGRect(x:screenWidth * 0.8, y: screenHeight * 0.15,
                                  width: screenWidth * 0.1, height:screenHeight * 0.1)
        
        //position star3 image
        self.star3.frame = CGRect(x:screenWidth * 0.3, y: screenHeight * 0.7,
                                  width: screenWidth * 0.1, height:screenHeight * 0.1)
        
        //position star4 image
        self.star4.frame = CGRect(x:screenWidth * 0.75, y: screenHeight * 0.85,
                                  width: screenWidth * 0.1, height:screenHeight * 0.1)
        
        //position thumb up image
        self.thumbsUp.frame = CGRect(x:0, y: screenHeight * 0.4,
                                     width: screenWidth * 0.2, height:screenHeight * 0.2)
        
        //position play again image
        self.btnPlayAgain.frame = CGRect(x:screenWidth * 0.4, y: screenHeight * 0.4,
                                         width: screenWidth * 0.2, height:screenHeight * 0.2)
    }
    
    /*
     * This function takes input from the number images and compares the user answer with
     * the correct answer. If the answer is incorrect, the question mark symbol turns
     * red. If the answer is correct, the second screen which contains flashing stars
     * is shown to the users while the first screen is hidden.
     */
    @IBAction func checkAnswer(_ sender: UIButton) {
        //retrieve the number from the image clicked
        let userAnswer = Int(sender.currentTitle!)
        
        //work out the correct answer
        correctAnswer = num1 + num2
        
        //if numbers match, hide 1st view, turn equation text color to red and show 2nd view
        if (userAnswer == correctAnswer){
            self.greyBackground.isHidden = true
            self.PlateView.isHidden = true
            self.CorrectView.isHidden = false
            lblCorrectAnswer.text = String(correctAnswer)
            lblCorrectAnswer.isHidden = false
            lblQuestionRed.isHidden = true
            lblQuestionMark.isHidden = true
            self.lblPlusSign.textColor = UIColor.red
            self.lblNum1.textColor = UIColor.red
            self.lblNum2.textColor = UIColor.red
            self.lblEqualsSign.textColor = UIColor.red
            /*
             * call the animateStars function and pass it the star UIImageView as an argument
             * to animate the stars
             */
            animateStars(star1)
            animateStars(star2)
            animateStars(star3)
            animateStars(star4)
        }
        //if answer is incorrect, question mark symbols turns to red.
        else{
            self.lblQuestionMark.alpha = 1
            UIView.animate(withDuration: 0.2, animations: {
                self.lblQuestionMark.alpha = 0
            })
        }
    }
    
    /*
     * This function takes a UIImageView as a parameter and animates it. 
     * It is used to animate the stars.
     */
    func animateStars(_ star: UIImageView){
        star.alpha = 1
        UIView.animate(withDuration: 1, animations: {
            UIView.setAnimationRepeatCount(Float(Int32.max))
                star.alpha = 0
                star.alpha = 1
                star.alpha = 0
        })
    }

    //hide correct view and show first view
    @IBAction func showFirstView(_ sender: UIButton) {
        self.greyBackground.isHidden = false
        self.PlateView.isHidden = false
        self.CorrectView.isHidden = true
        //return equation text colour from red to black
        self.lblPlusSign.textColor = UIColor.black
        self.lblNum1.textColor = UIColor.black
        self.lblNum2.textColor = UIColor.black
        self.lblEqualsSign.textColor = UIColor.black
        lblQuestionRed.isHidden = false
        lblQuestionMark.isHidden = false
        self.lblQuestionMark.alpha = 1
        //generate new numbers for equation
        genRandomNos()
        //regenerate first view
        buildFirstView()
    }

    
    //Function which generates two random numbers and assigns
    //them to the labels
    func genRandomNos() {
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
        //call method to generate two random numbers between 0 and 4
        genRandomNos()
        /*
         * call the buildFirstScreen and buildCorrectView functions which 
         * position everything on the IPhone's screen after the view
         * is loaded. The correct view is initially hidden.	
         */
        buildFirstView()
        buildCorrectView()
        self.CorrectView.isHidden = true
    }
}

