//
//  WelcomeViewController.swift
//  Karousel
//
//  Created by Eric Eriksson on 10/27/14.
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButton(sender: AnyObject) {
        performSegueWithIdentifier("endWelcomeSegue", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
