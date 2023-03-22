//
//  FourthViewController.swift
//  Navigation - push&pop
//
//  Created by Mac15 on 2023/3/9.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toNext(_ sender: UIButton) {
        guard(self.navigationController?.popToRootViewController(animated: true)) != nil else{
            print("NO Navigation controller")
            return
        }
    }

    @IBAction func toBack(_ sender: UIButton) {
        guard(self.navigationController?.popViewController(animated: true)) != nil else{
            print("NO Navigation controller")
            return
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
