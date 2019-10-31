//
//  ViewController.swift
//  Mid_Term_ios
//
//  Created by Rizul goyal on 2019-10-30.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gblData = Singleton.getInstance()
        gblData.createCust()
        gblData.printdata()
        let t = gblData.returnCustObject(custID: 1)
        print(t!.fullName)
        
        
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//        let temp  = sb.instantiateViewController(identifier: "TableVC") as TViewController
//        temp.temp1 = gblData
        
        
    }


}

