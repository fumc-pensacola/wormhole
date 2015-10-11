//
//  FirstViewController.swift
//  FUMC-TV
//
//  Created by Andrew Branch on 10/10/15.
//  Copyright © 2015 FUMC Pensacola. All rights reserved.
//

import UIKit
import AVKit

class FirstViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "videoSegue") {
            let viewController = segue.destinationViewController as! AVPlayerViewController
            viewController.player = AVPlayer(URL: NSURL(string: "https://yourstreamlive.com/live/2110/hls")!)
        }
    }


}

