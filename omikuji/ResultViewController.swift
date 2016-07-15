//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 小西夏穂 on 2016/06/06.
//  Copyright © 2016年 小西夏穂. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let number = Int(rand() % 10)
        
        if number == 0 {
            myLabel.text = String("大吉")
        }else if number <= 2 {
            myLabel.text = String("中吉")
        }else if number <= 5 {
            myLabel.text = String("吉")
        }else if number <= 8 {
            myLabel.text = String("小吉")
        }else {
            myLabel.text = String("凶")
        }
        
        if myLabel.text == "大吉" {
            myLabel.textColor = UIColor.redColor()
        } else {
            myLabel.textColor = UIColor.yellowColor()
        }
        
    }
    
    @IBAction func modoru() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
