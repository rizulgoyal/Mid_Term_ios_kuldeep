//
//  TableViewController.swift
//  Mid_Term_ios
//
//  Created by Rizul goyal on 2019-10-30.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    var temp1 = Singleton.getInstance()
  
    @IBOutlet weak var customerTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        customerTable.delegate = self
        customerTable.dataSource = self
        
        //navigationItem.hidesBackButton=true
        //allLogOutButton()

        
        

        // Do any additional setup after loading the view.
    }
//    private func allLogOutButton()
//        {
//            let btnLogOut = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(TableViewController.logout(sender:)))
//    //        navigationItem.leftBarButtonItem = btnLogOut
//            navigationItem.leftBarButtonItems = [btnLogOut]
//
//        }
    
//    @objc func logout(sender: UIBarButtonItem)
//       {
//           let sb = UIStoryboard(name: "Main", bundle: nil)
//           let loginVC = sb.instantiateViewController(identifier: "Main") as ViewController
//           navigationController?.pushViewController(loginVC, animated: true)
//
//       }
    override func viewWillAppear(_ animated: Bool) {
        customerTable.reloadData()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp1.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let t1 = temp1.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = t1?.fullName
        cell.detailTextLabel?.text = t1?.customerEmail
       return cell
        
    
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = sb.instantiateViewController(identifier: "custDetails") as CustomerDetailsViewController
        loginVC.cdata = temp1.returnCustObject(custID: indexPath.row + 1)
        
        navigationController?.pushViewController(loginVC, animated: true)
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
