//
//  ViewController.swift
//  8gag
//
//  Created by Agrim Singh on 20/1/16.
//  Copyright © 2016 Agrim Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prepareMeme()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var memeImageView: UIImageView!
    
    var memeList:[Meme] = []
    
    

    @IBAction func nextButtonPressed(sender: UIButton) {
        let selectedMeme = memeList[Int(arc4random_uniform(UInt32(memeList.count)))]
        titleLabel.text = selectedMeme.title
        memeImageView.image = selectedMeme.image
    }
    
    func prepareMeme() {
        for var i = 0; i <= 8; ++i {
            var memeInstance:Meme = Meme()
            memeInstance.title = "Image \(i)"
            memeInstance.image = UIImage(named: "Meme \(i).jpg")
            memeList.append(memeInstance)
        }
    }

}

