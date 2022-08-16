//
//  ResultViewController.swift
//  Gacha
//
//  Created by ryo on 2022/08/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるためのInt型の変数
    var number: Int!
    
    //背景画像とモンスターの画像を表示するためのImageViewを用意
    @IBOutlet var backgroungImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0~9までの乱数を発生
        number = Int.random(in: 0...9)
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroungImageView.image = UIImage(named: "bg_gold")
        }
        else if number > 7 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroungImageView.image = UIImage(named: "bg_red")
        }
        else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroungImageView.image = UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
