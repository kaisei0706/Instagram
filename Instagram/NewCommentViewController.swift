//
//  NewCommentViewController.swift
//  Instagram
//
//  Created by 岩田海靖 on 2020/08/08.
//  Copyright © 2020 kaisei.iwata. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class NewCommentViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentText: UITextView!
    @IBOutlet weak var navigationbar: UINavigationItem!
    
    var postdata:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentText.text = ""
        commentText.becomeFirstResponder()
        let user = Auth.auth().currentUser
        if let user = user {
            usernameLabel.text = user.displayName
        }
        
        // Do any additional setup after loading the view.
    }
    
        
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func commentButtonClicked(_ sender: Any, forEvent event: UIEvent) {
        print("DEBUG_PRINT: commentボタンがタップされました。")
        
        if let comment = commentText.text{
            if comment.isEmpty{
                SVProgressHUD.showError(withStatus: "コメントを入力して下さい")
                return
            }
            
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    let newcomment = postdata
    
    
        
        
    }
    
        
        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

