//
//  Choices-EndScreen.swift
//  Database
//


import UIKit

class Choices_EndScreen: UIViewController {
    
    @IBOutlet weak var replay: UIButton!
    
    
    @IBOutlet weak var mapScreen: UIButton!
    
    var counter = 0
    //var isPresented = true
    
    
   override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.LandscapeRight.rawValue
        //return UIInterfaceOrientation.LandscapeLeft.rawValue
    }
    
   /* override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "") {
            // pass data to next view
        }
    }
*/
    
    /*@IBAction
    func dismiss() {
        
        isPresented = false
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: nil);
        
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UIInterfaceOrientation.LandscapeRight.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func replayButton(sender: UIButton) {
    println("Replay Button Pressed!!!!!!!!!")
    }
    
    
    @IBAction func mapScreenButton(sender: UIButton) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "nextView"
        {
            if let destinationVC = segue.destinationViewController as? MapScreen{
                counter++
                destinationVC.numberToDisplay = counter
            }
        }
        
    }

    
}
