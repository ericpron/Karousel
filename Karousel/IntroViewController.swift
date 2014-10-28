//
//  IntroViewController.swift
//  Karousel
//
//  Created by Eric Eriksson on 10/23/14.
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        introScrollView.contentSize = CGSize(width: 320, height: introImgView.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
