//
//  ViewController.swift
//  WeekPart3
//
//  Created by 1 on 2023/9/20.
//

import UIKit

struct Station: Decodable {
    let stationID: String
    let stationName: String
    let stationAddress: String
}
class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationIDLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getStation()
    }
    func getStation() {
        if let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("error: \(error)")
                    return
                }
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let station = try decoder.decode(Station.self, from: data)
                        
                        OperationQueue.main.addOperation {
                            self.stationIDLabel.text = station.stationID
                            self.stationNameLabel.text = station.stationName
                            self.addressLabel.text = station.stationAddress
                        }
                    } catch {
                        print("error: \(error)")
                    }
                }
            }
            task.resume()
        }
    }
    
    
}

