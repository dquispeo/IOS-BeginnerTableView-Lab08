//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by Sean Allen on 5/19/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
    }
    
    
    func createArray() -> [Video] {
        
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Tarjeta 01")
        let video2 = Video(image: #imageLiteral(resourceName: "dev-setup"), title: "Tarjeta 02")
        let video3 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "Tarjeta 03")
    
        return [video1, video2, video3]
    }
}


extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}





