//
//  ViewController.swift
//  tabelViewDesign
//
//  Created by Greens on 10/07/19.
//  Copyright © 2019 Greens. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    
   
    @IBOutlet weak var myTableView: UITableView!
    var pic = [#imageLiteral(resourceName: "harbajan"), #imageLiteral(resourceName: "dhoni"),#imageLiteral(resourceName: "sachin"),#imageLiteral(resourceName: "rohit"),#imageLiteral(resourceName: "kohli"),]
    var playerName = ["Harbajan","Dhoni","Sachin","Rohit","Virat Kohli"]
    var details = ["Bowler","Wicket Keeper","Master Blaster","Hit Man","captain"]
    var det = ["Harbhajan Singh Plaha commonly known as Harbhajan or simply Bhajji, is an Indian international cricketer, who plays all forms of the game cricket. A specialist ...","Mahendra Singh Dhoni commonly known as MS Dhoni, is an Indian international cricketer who captained the Indian national team in limited-overs formats from ...","Sachin Ramesh Tendulkar (/ˌsʌtʃɪn tɛnˈduːlkər/ ( listen); born 24 April 1973) is a former Indian international cricketer and a former captain of the Indian national team. ","Rohit Sharma has won the IPL title as a skipper four times for Mumbai Indians. He is currently the only player in the cricket history to score three double hundreds in ODIs, the highest being 264 runs","Virat Kohli ( pronunciation (help. · info); born 5 November 1988) is an Indian cricketer who currently captains the India national team."]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.separatorStyle = UITableViewCellSeparatorStyle.none
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        statusBarView.backgroundColor = UIColor.red
        view.addSubview(statusBarView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)  as! customTableViewCell

        cell.myPic.image = pic[indexPath.row]
        cell.nameLabel.text = playerName[indexPath.row]
        cell.detailLabel.text = details[indexPath.row]
        cell.subDetailLabel.numberOfLines = det[indexPath.row].count
        cell.subDetailLabel.text = det[indexPath.row]
        cell.myView.layer.cornerRadius = 15
        cell.myPic.layer.masksToBounds = true
        cell.myPic.layer.cornerRadius = 8
        cell.topButton.layer.cornerRadius = 5
        cell.bottomButton.layer.cornerRadius = 10
        cell.bottomButton.layer.borderColor = UIColor.gray.cgColor
        cell.bottomButton.layer.borderWidth = 1
        
        if indexPath.row%2 == 0
        {
        cell.btnOutlet.backgroundColor = .green
        }
        else
        {
            cell.btnOutlet.backgroundColor = .yellow
        }
        return cell

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 194
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
        {
        return "Player Details"
        }
//     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Player Details"
//    }
    
}
}
