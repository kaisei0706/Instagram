//
//  NewCommentViewController.swift
//  Instagram
//
//  Created by 岩田海靖 on 2020/08/08.
//  Copyright © 2020 kaisei.iwata. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import SVProgressHUD

class NewCommentViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentText: UITextView!
    @IBOutlet weak var navigationbar: UINavigationItem!
    
    var postdata: PostData?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentText.text = ""
        commentText.becomeFirstResponder()
        let user = Auth.auth().currentUser
        if let user = user {
            usernameLabel.text = user.displayName
        }
        
    let newcomment = postdata
        
        // Do any additional setup after loading the view.
    }
    
        
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func commentButtonClicked(_ sender: Any) {
        print("DEBUG_PRINT: commentボタンがタップされました。")
        
        
        var updateComment: FieldValue
        if let comments = commentText.text{
            if comments.isEmpty{
                SVProgressHUD.showError(withStatus: "コメントを入力して下さい")
                return
            
            }else{
            updateComment = FieldValue.arrayUnion([comments])
            }
            let postRef = Firestore.firestore().collection(Const.PostPath).document(postdata!.id)
            postRef.updateData(["comments": updateComment])
            
        }
        
        SVProgressHUD.showSuccess(withStatus: "投稿しました")
        
        // 投稿処理が完了したので先頭画面に戻る
        UIApplication.shared.windows.first{ $0.isKeyWindow }?.rootViewController?.dismiss(animated: true, completion: nil)
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
