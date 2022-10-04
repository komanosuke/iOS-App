//
//  QuizViewController.swift
//  EnglishQuiz
//
//  Created by Komai Toshihiko on 2019/11/24.
//  Copyright © 2019 Komai Toshihiko. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for _ in 0..<quizList.count {
            titleLabel.text = "第" + String(quizCount+1) + "問" + " 数字をクリック！"
            QuizView.text = quizList[quizCount]
            selection1.text = answerList1[quizCount]
            selection2.text = answerList2[quizCount]
            selection3.text = answerList3[quizCount]
            selection4.text = answerList4[quizCount]
            
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
    
    
    //n
    var quizCount = 0
    
    //問題
    let quizList:Dictionary<Int,String> =
        [0:"源氏物語を書いたのは誰？", 1:"金閣の建立を命じたのは誰？", 2:"荒々しい大波と富士を描いた富嶽三十六景は誰の作品？", 3:"日本の初代内閣総理大臣は誰？", 4:"『学問のすすめ』を出版し、青年教育の重要性を主張したのは誰？", 5:"太平洋戦争の終戦は西暦何年？"]
    
    //選択肢４
    let answerList1:Dictionary<Int,String> =
        [0:"卑弥呼", 1:"足利義満", 2:"東洲斎写楽", 3:"大隈重信", 4:"渋沢栄一", 5:"1942年"]
    
    let answerList2:Dictionary<Int,String> =
    [0:"紫式部", 1:"足利尊氏", 2:"歌川広重", 3:"黒田清隆", 4:"中江兆民", 5:"1943年"]

    let answerList3:Dictionary<Int,String> =
    [0:"清少納言", 1:"足利義政", 2:"葛飾北斎", 3:"伊藤博文", 4:"西周", 5:"1944年"]
    
    let answerList4:Dictionary<Int,String> =
    [0:"作者不詳", 1:"足利義教", 2:"喜多川歌麿", 3:"桂太郎", 4:"福沢諭吉", 5:"1945年"]
    
    //正解リスト
    let correctAnswerList = ["紫式部","足利義満","葛飾北斎","伊藤博文","福沢諭吉","1945年"]
    
    //第n問
    @IBOutlet weak var titleLabel: UILabel!
    
    //次へボタン
    @IBAction func goToNext(_ sender: Any) {
        judgeView.isHidden = true
        quizCount += 1
        self.viewDidLoad()
    }
    
    //問題ビュー
    @IBOutlet weak var QuizView: UILabel!
    
    //選択肢ラベル
    @IBOutlet weak var selection1: UILabel!
    
    
    @IBOutlet weak var selection2: UILabel!
    
    
    @IBOutlet weak var selection3: UILabel!
    
    
    @IBOutlet weak var selection4: UILabel!
    
    
    
    //正解不正解画像
    @IBOutlet weak var judgeView: UIImageView!
    
    //正誤判断
    @IBAction func button1(_ sender: Any) {
        if quizCount == quizList.count {
            return
        }
        judgeView.isHidden = false
        if answerList1[quizCount] == correctAnswerList[quizCount] {
            judgeView.image = UIImage(named:"right")
        } else {
            judgeView.image = UIImage(named:"boo")
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if quizCount == quizList.count {
            return
        }
        judgeView.isHidden = false
        if answerList2[quizCount] == correctAnswerList[quizCount] {
            judgeView.image = UIImage(named:"right")
        } else {
            judgeView.image = UIImage(named:"boo")
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if quizCount == quizList.count {
            return
        }
        judgeView.isHidden = false
        if answerList3[quizCount] == correctAnswerList[quizCount] {
            judgeView.image = UIImage(named:"right")
        } else {
            judgeView.image = UIImage(named:"boo")
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if quizCount == quizList.count {
            return
        }
        judgeView.isHidden = false
        if answerList4[quizCount] == correctAnswerList[quizCount] {
            judgeView.image = UIImage(named:"right")
        } else {
            judgeView.image = UIImage(named:"boo")
        }
    }
    
    
    
}


