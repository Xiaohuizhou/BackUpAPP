//
//  GHHomeViewController.swift
//  BackUpAPP
//
//  Created by 周凯辉 on 2017/1/9.
//  Copyright © 2017年 周光辉. All rights reserved.
//

import UIKit

class GHHomeViewController: BaseViewController ,UITableViewDataSource,UITableViewDelegate{

    var BaseView = UIView.init()
    let array = NSMutableArray.init()
    lazy var tableView: UITableView = {
        
        let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: lSCREEN_WIDTH, height: lSCREEN_HEIGHT), style: .plain)
        table.delegate = self
        table.dataSource = self
        table.rowHeight = 80
       // table.setEditing(true, animated: true)
        return table
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(tableView)
//        BaseView = UIView.init(frame: .init(x: 0, y: 0, width: lSCREEN_WIDTH, height: 200))
//        BaseView.backgroundColor = UIColor.red
//        self.view.addSubview(BaseView)

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as UITableViewCell?
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = "1111"
        cell?.detailTextLabel?.text = "222"
//        let swipeGesture = UISwipeGestureRecognizer.init()
//        swipeGesture.addTarget(self, action:#selector(GHHomeViewController.handleSwipeGesture(sender:)))
//        cell?.contentView.addGestureRecognizer(swipeGesture)
        return cell!
        
    }
    
//    func handleSwipeGesture(sender: UISwipeGestureRecognizer) -> UISwipeGestureRecognizer.Type {
//        print("优化了")
//        
//        return handleSwipeGesture(sender:)
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        self.array .removeObject(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "删除"
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let action0 = UITableViewRowAction.init(style: .normal, title: "编辑") { (UITableViewRowAction, indexPath) in
            // 收回左滑出现的按钮(退出编辑模式)
            tableView.isEditing = false;
        }
        let action1 = UITableViewRowAction.init(style: .normal, title: "删除") { (UITableViewRowAction, indexPath) in
            // 收回左滑出现的按钮(退出编辑模式)
            tableView.isEditing = false;
            print("1")
        }
        return [action1, action0];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
