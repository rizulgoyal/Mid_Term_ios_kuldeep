//
//  AddCustomerViewController.swift
//  Mid_Term_ios
//
//  Created by Rizul goyal on 2019-10-31.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {

    let temp = Singleton.getInstance()
    
    @IBOutlet weak var custFName: UITextField!
    @IBOutlet weak var custLName: UITextField!
    @IBOutlet weak var custEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func addCustomerButton(_ sender: Any)
    {
        let cFName = custFName.text
        let cLName = custLName.text
        let cEmail = custEmail.text
        
        temp.addNewCustomer(First_Name: cFName!, Last_Name: cLName!, email: cEmail!)
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let tableVC = sb.instantiateViewController(identifier: "TableVC") as TableViewController
//        navigationController?.pushViewController(tableVC, animated: true)
        
        
//      let storyboard = UIStoryboard(name: "Main", bundle: nil)
//      let secondViewController = storyboard.instantiateViewController(withIdentifier: "TableVC") as UIViewController
//      navigationController?.pushViewController(secondViewController, animated: true)
////  
        
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
