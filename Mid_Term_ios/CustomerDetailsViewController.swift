//
//  CustomerDetailsViewController.swift
//  Mid_Term_ios
//
//  Created by Rizul goyal on 2019-10-31.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController
{

    var cdata : Customer? = nil
    
    
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var lName: UILabel!
   
    @IBOutlet weak var email: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        fName.text = cdata?.customerFName
        lName.text = cdata?.customerLName
        //email.text = cdata?.customerEmail
        // Do any additional setup after loading the view.
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
