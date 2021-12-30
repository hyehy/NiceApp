//
//  ViewController.swift
//  NiceApp
//
//  Created by 정혜윤 on 2021/12/29.
//

import UIKit
import Lottie
class MainViewController: UIViewController {
    
    
    @IBOutlet var lblNumber: UILabel!
    var x = 0
    
    let animationView: AnimationView = {
       
        let animView = AnimationView(name:"89454-workout-santa")
        animView.frame = CGRect(x:0,y:0,width:400,height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
        
    }()
    
    //  뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        

        //애니메이션 실행
        animationView.play{(finish)in
            print("애니메이션이 끝났다.")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            



            
        }
        
    }

    @IBAction func btnUp(_ sender: UIButton) {
        x = x+1
        lblNumber.text=String(x)
    }
    
    @IBAction func btnDown(_ sender: UIButton) {
        x = x-1
        lblNumber.text=String(x)
    }
}

