//
//  DetailsViewController.swift
//  Flickster
//
//  Created by Nashid  on 2/9/17.
//  Copyright © 2017 Nashid Chowdhury. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var movie: NSDictionary!
    
    @IBOutlet weak var infoView: UIView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie)
        
        scrollView.contentSize = CGSize (width: scrollView.frame.size.width, height: infoView.frame.origin.y+infoView.frame.size.height)
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"] as? String
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
        
        
        let baseURL = "http://image.tmdb.org/t/p/w500/"
        
        if let posterPath = movie["poster_path"] as? String {
            
            let imageURL = NSURL(string: baseURL+posterPath)
           posterImageView.setImageWith(imageURL as! URL)
            
        }
        // Do any additional setup after loading the view.
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
