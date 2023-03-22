//
//  ViewController.swift
//  Navigation - push&pop
//
//  Created by Mac15 on 2023/3/9.
//

import UIKit

class ViewController: UIViewController {

    let gradientLayer = CAGradientLayer()
    func createGraientlayer(){
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func toSecond(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC"){
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func toThird(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "thirdVC"){
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGraientlayer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    {
//        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC"){
//            self.navigationController?.pushViewController(vc, animated: true)
//        }
//
//    }


}

