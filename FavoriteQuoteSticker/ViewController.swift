//
//  ViewController.swift
//  Homeowork_3
//
//  Created by Chinonso Obidike on 1/1/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiText: UITextField!
    @IBOutlet weak var uiLabel: UILabel!
    
    var x: CGFloat = 20;
    var y: CGFloat = 100;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .clear;
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Randomly choose a sticker background color
    func randomColor() -> UIColor {
        
        let colors: [UIColor] = [
            .magenta,
            .orange,
            .cyan,
            .green,
            .purple,
            .yellow,
            .clear,
            .brown
        ];
        
        let randomCol: Int = Int.random(in: 0 ..< colors.count);
        return colors[randomCol];
        
        //return colors[Int.random(in: 0 ..< colors.count)];
    }
    
    //paste your quote sticker on the screen
    func updateUI(){
        //for _ in 0 ..< 100 {
            let label: UILabel = UILabel();
            label.backgroundColor = randomColor();//yellow;
            label.numberOfLines = 0; //0 permits any number of lines
            label.text = uiText.text!
            print("view.frame = \(view.frame)");
            let width: CGFloat = view.frame.width;
            let height: CGFloat = view.frame.height;
            //x += 30;
            //y += 30;
            x = CGFloat.random(in: 0 ..< width);
            y = CGFloat.random(in: 0 ..< height);
            label.frame.origin = CGPoint(x: x, y: y); //frame is a CGRect.
            label.frame.size = label.intrinsicContentSize; //needed if not using contents, intrinsicContentSize also means shrink wrapping, i.e. the container is exactly the size of the cintent
            label.frame.size = CGSize(width: view.frame.width - 40, height: label.frame.height);
        
            print("label.frame = \(label.frame)"); //(100.0, 100.0, 169.0, 61.0)
            
            view.addSubview(label);
        //}
        
    }
    
    //call to action button
    @IBAction func uiButton(_ sender: UIButton) {
        print("uiButton");
        uiText.resignFirstResponder();
        updateUI();
        
    }
    
    
    
}

