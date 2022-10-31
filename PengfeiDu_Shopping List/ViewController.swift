//
//  ViewController.swift
//  PengfeiDu_Shopping List
//
//  Created by Pengfei Du on 2022-10-28.
//  File Name:PengfeiDu_Shopping List
//  Author Name:Pengfei Du
//  Student ID:301276081

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet var uiView1: UIView!
    var numberItem:Int=5
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        
        var thisLabel:UILabel=uiView1.viewWithTag(sender.tag+10) as! UILabel
        thisLabel.text=Int(sender.value).description

    }
    
    
    @IBAction func addItem(_ sender: UIButton) {
        
        if(numberItem<5)
        {
            numberItem=numberItem+1
            var thisView:UIView=uiView1.viewWithTag(numberItem+30)!
            thisView.isHidden=false
        }
    }
    
    
    @IBAction func deleteItem(_ sender: UIButton) {
        
        var thisView:UIView=uiView1.viewWithTag(numberItem+30)!
        if(numberItem>1)
        {
            thisView.isHidden=true
            numberItem=numberItem-1
        }
    }
    
    
    @IBAction func Save(_ sender: UIButton)  //Output the list as a txt file
    {
        let url = URL( fileURLWithPath: "/Users/lipawsky/Desktop/test.txt" )

        var output:String;
        var TitleLabel:UITextField=uiView1.viewWithTag(100) as! UITextField
        output=""+TitleLabel.text!
        output=output+"\n"
        output=output+"\n"
        
        var index:Int=1;
        
        while(index<=numberItem){
            var itemLabel:UITextField=uiView1.viewWithTag(index+20) as! UITextField
            var numberLabel:UILabel=uiView1.viewWithTag(index+10) as! UILabel
            output=output + itemLabel.text!
            output=output + ":"
            output=output + numberLabel.text!
            output=output + "\n"
            index=index+1
            
        }
        
    // write:
    do {
        try output.write(to: url, atomically: true, encoding: .utf8)
    }
    catch {
      print("Error writing: \(error.localizedDescription)")
    }
        
    }
    
    
    @IBAction func Cancel(_ sender: UIButton) {
        
        var index:Int=1;
        
        while(index<=5){
            var numberLabel:UILabel=uiView1.viewWithTag(index+10) as! UILabel
            var numberstepper:UIStepper=uiView1.viewWithTag(index) as! UIStepper
            numberLabel.text!="0"
            numberstepper.value=0
            index=index+1
            
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }


}

